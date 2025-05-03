import 'package:dio/dio.dart';

import '../../../base/base_response.dart';
import '../../../env/env.dart';
import '../config/http_client_config.dart';
import '../config/http_config.dart';
import '../interceptors/logging_interceptor.dart';
import '../interfaces/i_auth_handler.dart';
import '../interfaces/i_http_client.dart';

final Set<ApiMethod> _methodWithoutBody = {ApiMethod.get, ApiMethod.delete};

class HttpClient implements IHttpClient {
  static HttpClient? _instance;
  final Dio _dio;
  final IAuthHandler _authHandler;

  HttpClient({
    required HttpClientOptions options,
    required IAuthHandler authHandler,
  })  : _dio = Dio(options.toDioOptions()),
        _authHandler = authHandler {
    _configureInterceptors(options.enableLogging);
  }

  factory HttpClient.withDefaults({
    required IAuthHandler authHandler,
    String? baseUrl,
  }) {
    final options = HttpClientOptions(
      baseUrl: baseUrl ?? Env.apiUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    );

    return HttpClient(options: options, authHandler: authHandler);
  }

  static HttpClient getInstance({
    IAuthHandler? authHandler,
    HttpClientOptions? options,
    bool forceNew = false,
  }) {
    if (_instance == null || forceNew) {
      if (authHandler != null && options != null) {
        _instance = HttpClient(options: options, authHandler: authHandler);
      } else if (authHandler != null) {
        _instance = HttpClient.withDefaults(authHandler: authHandler);
      } else {
        throw ArgumentError(
            'authHandler must be provided when creating a new instance');
      }
    }
    return _instance!;
  }

  void _configureInterceptors(bool enableLogging) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onError: _onError,
      ),
    );

    if (enableLogging) {
      _dio.interceptors.add(LoggingInterceptor());
    }
  }

  void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _authHandler.onRequest(options);
    handler.next(options);
  }

  Future<void> _onError(
      DioException error, ErrorInterceptorHandler handler) async {
    final handled = await _authHandler.handleAuthError(error);

    if (handled) {
      final request = error.requestOptions;
      try {
        final response = await _dio.fetch(request);
        return handler.resolve(response);
      } on DioException catch (retryError) {
        return handler.reject(retryError);
      }
    }

    handler.next(error);
  }

  @override
  Future<BaseResponse<Map<String, dynamic>>>
      request<Method extends ApiMethod, Body, Params>(
    String endpoint,
    HttpClientConfig<Method, Params, Body> apiConfig,
  ) async {
    try {
      final response = await _dio.request(
        endpoint,
        queryParameters: _methodWithoutBody.contains(apiConfig.method)
            ? apiConfig.params
            : null,
        data: !_methodWithoutBody.contains(apiConfig.method)
            ? apiConfig.body
            : null,
        options: Options(method: apiConfig.method.lowercaseValue),
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

  BaseResponse<Map<String, dynamic>> _handleDioException(DioException e) {
    return BaseResponse(
      ok: false,
      data: e.response?.data,
      statusCode: e.response?.statusCode,
    );
  }

  @override
  void setToken(String token) {
    _authHandler.setToken(token);
  }

  @override
  void clearToken() {
    _authHandler.clearToken();
  }
}

extension ApiMethodExtension on ApiMethod {
  String get lowercaseValue {
    return toString().split('.').last.toLowerCase();
  }
}
