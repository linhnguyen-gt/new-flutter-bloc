import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../../env/env.dart';
import '../base/base_response.dart';
import '../extensions/extensions.dart';
import 'http_config.dart';

const String baseURL = Env.apiUrl;
const _methodRes = [ApiMethod.get, ApiMethod.delete];

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
    instance ??= Dio(BaseOptions(baseUrl: baseURL));
    setInterceptorRequest();
    setInterceptorResponse();
  }

  Future<BaseResponse<Map<String, dynamic>>>
      request<Method extends ApiMethod, Body, Params>(
    String endpoint,
    HttpClientConfig<Method, Params, Body> apiConfig,
  ) async {
    final method = apiConfig.config.method;
    final params = apiConfig.config.params;
    final body = apiConfig.config.body;
    try {
      final res = await instance!.request(
        endpoint,
        queryParameters: _methodRes.contains(method) ? params : null,
        data: !_methodRes.contains(method) ? body : null,
        options: Options(
          method: method.lowercaseValue,
        ),
      );

      return BaseResponse(
        ok: true,
        data: res.data,
        statusCode: res.statusCode,
      );
    } catch (e) {
      final error = e as DioException;

      return BaseResponse(
        ok: false,
        data: error.response?.data,
        statusCode: error.response?.statusCode,
      );
    }
  }

  void setInterceptorRequest() {
    instance!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          token = 'token';
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          handler.next(options);
        },
      ),
    );
  }

  void setInterceptorResponse() {
    instance!.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) async {
          final errorResponse = error.response;
          if (errorResponse != null) {
            developer.log('${errorResponse.data}', name: 'Error config:');

            // Access Token was expired
            if (errorResponse.statusCode == 401 ||
                errorResponse.data['message'] == 'Unauthorized') {
              try {
                await refreshToken();
                return;
              } catch (refreshError) {
                refreshError as DioException;
                return Future.error(
                    refreshError.response?.data ?? refreshError);
              }
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  Future<dynamic>? refreshToken() {
    // handle token here!!
    return null;
  }
}
