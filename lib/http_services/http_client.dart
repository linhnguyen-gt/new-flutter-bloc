import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../../env/env.dart';
import '../base/base_response.dart';
import '../extensions/extensions.dart';
import 'http_config.dart';

const String baseURL = Env.apiUrl;
const _methodRes = [ApiMethod.get, ApiMethod.delete];
const Duration _timeout = Duration(seconds: 30);

class HttpClient {
  static HttpClient? _instance;
  late final Dio _dio;
  String? _token;

  HttpClient._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: baseURL,
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      sendTimeout: _timeout,
    ));
    _setInterceptors();
  }

  static HttpClient getInstance() {
    _instance ??= HttpClient._internal();
    return _instance!;
  }

  void _setInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onResponse: _onResponse,
        onError: _onError,
      ),
    );
  }

  Future<BaseResponse<Map<String, dynamic>>>
      request<Method extends ApiMethod, Body, Params>(
    String endpoint,
    HttpClientConfig<Method, Params, Body> apiConfig,
  ) async {
    try {
      final response = await _dio.request(
        endpoint,
        queryParameters: _methodRes.contains(apiConfig.config.method)
            ? apiConfig.config.params
            : null,
        data: !_methodRes.contains(apiConfig.config.method)
            ? apiConfig.config.body
            : null,
        options: Options(method: apiConfig.config.method.lowercaseValue),
      );

      return BaseResponse(
        ok: true,
        data: response.data,
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      return _handleDioException(e);
    } catch (e) {
      return BaseResponse(
        ok: false,
        data: {'error': e.toString()},
        statusCode: 500,
      );
    }
  }

  void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _token = 'token';
    if (_token != null) {
      options.headers['Authorization'] = 'Bearer $_token';
    }
    handler.next(options);
  }

  void _onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  Future<void> _onError(
      DioException error, ErrorInterceptorHandler handler) async {
    final errorResponse = error.response;
    if (errorResponse != null) {
      developer.log('${errorResponse.data}', name: 'Error config:');

      if (errorResponse.statusCode == 401 ||
          errorResponse.data['message'] == 'Unauthorized') {
        try {
          await _refreshToken();
          return;
        } catch (refreshError) {
          return handler.reject(DioException(
            requestOptions: error.requestOptions,
            error:
                (refreshError as DioException).response?.data ?? refreshError,
          ));
        }
      }
    }
    handler.next(error);
  }

  BaseResponse<Map<String, dynamic>> _handleDioException(DioException e) {
    return BaseResponse(
      ok: false,
      data: e.response?.data,
      statusCode: e.response?.statusCode,
    );
  }

  Future<void> _refreshToken() async {
    // Implement token refresh logic here
    throw UnimplementedError('Token refresh not implemented');
  }
}
