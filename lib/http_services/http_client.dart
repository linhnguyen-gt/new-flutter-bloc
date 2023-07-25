import 'package:dio/dio.dart';

import 'base_response.dart';
import 'http_config.dart';

class DefaultApiConfig {
  static const String baseURL = 'https://datausa.io/api/';
}

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
    instance ??= Dio(BaseOptions(baseUrl: DefaultApiConfig.baseURL));
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
            ? (params! as Map<String, dynamic>)
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
        statusCode: res.statusCode,
      );
    } catch (e) {
      final error = e as DioException;

      return BaseResponse<Data>(
        ok: false,
        data: error.response?.data,
        statusCode: error.response?.statusCode,
      );
    }
  }

// void setInterceptorRequest() {
//   instance!.interceptors.add(
//     InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         token = 'token';
//
//         if (token != null) {
//           options.headers['Authorization'] = 'Bearer $token';
//         }
//
//         handler.next(options);
//       },
//     ),
//   );
// }
//
// void setInterceptorResponse() {
//   instance!.interceptors.add(
//     InterceptorsWrapper(
//       onResponse: (response, handler) {
//         handler.next(response);
//       },
//       onError: (error, handler) async {
//         final errorResponse = error.response;
//         if (errorResponse != null) {
//           print('error config:: ${errorResponse.data}');
//           // Access Token was expired
//           if (errorResponse.statusCode == 401) {
//             if (errorResponse.data['message'] == 'Unauthorized') {
//               try {
//                 await refreshToken();
//               } catch (refreshError) {
//                 refreshError as DioException;
//                 return Future.error(
//                     refreshError.response?.data ?? refreshError);
//               }
//             } else {
//               return Future.error(errorResponse.data ?? error);
//             }
//           }
//         }
//         return handler.next(error);
//       },
//     ),
//   );
// }
//
// Future? refreshToken() {
//   return null;
// }
}

extension ApiMethodExtension on ApiMethod {
  String get lowercaseValue {
    return toString().split('.').last.toLowerCase();
  }
}
