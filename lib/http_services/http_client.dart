import 'package:dio/dio.dart';

import 'base_response.dart';
import 'http_config.dart';

class HttpClient {
  static HttpClient? _instance;
  Dio? instance;
  String? token;

  HttpClient._internal() {
    _init();
  }

  static HttpClient getInstance() {
    _instance ??= HttpClient._internal();
    return _instance!;
  }

  void _init() {
    instance ??= Dio(BaseOptions(baseUrl: 'baseURL'));
  }

  Future<BaseResponse<Data>> request<Data extends Map<String, dynamic>,
          Method extends ApiMethod, Body, Params>(
      String endpoint, HttpClientConfig<Body, Params, Method> apiConfig) async {
    final method = apiConfig.config.method;
    final params = apiConfig.config.params;
    final body = apiConfig.config.body;

    try {
      final res = await instance!.request(
        endpoint,
        queryParameters: (method == ApiMethod.get || method == ApiMethod.delete)
            ? (params as Map<String, dynamic>)
            : null,
        data: (method != ApiMethod.get && method != ApiMethod.delete)
            ? body
            : null,
        options: Options(
          method: method.lowercaseValue,
        ),
      );

      return BaseResponse<Data>(
        ok: true,
        data: res.data,
        status: res.statusCode,
      );
    } catch (e) {
      final error = e as DioException;
      return BaseResponse<Data>(
        ok: false,
        data: error.response?.data,
        status: error.response?.statusCode,
      );
    }
  }
}

extension ApiMethodExtension on ApiMethod {
  String get lowercaseValue {
    return toString().split('.').last.toLowerCase();
  }
}
