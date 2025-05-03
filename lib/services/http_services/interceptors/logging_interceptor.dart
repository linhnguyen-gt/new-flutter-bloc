import 'dart:developer' as developer;

import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  final bool _enableRequestLogs;
  final bool _enableResponseLogs;
  final bool _enableErrorLogs;

  LoggingInterceptor({
    bool enableRequestLogs = true,
    bool enableResponseLogs = true,
    bool enableErrorLogs = true,
  })  : _enableRequestLogs = enableRequestLogs,
        _enableResponseLogs = enableResponseLogs,
        _enableErrorLogs = enableErrorLogs;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_enableRequestLogs) {
      developer.log(
        'REQUEST[${options.method}] => ${options.uri}\n'
        'Headers: ${options.headers}\n'
        'Data: ${options.data}',
        name: 'HTTP',
      );
    }
    super.onRequest(options, handler);
  }

  @override
  // ignore: strict_raw_type
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (_enableResponseLogs) {
      developer.log(
        'RESPONSE[${response.statusCode}] => ${response.requestOptions.uri}\n'
        'Data: ${response.data}',
        name: 'HTTP',
      );
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_enableErrorLogs) {
      developer.log(
        'ERROR[${err.response?.statusCode}] => ${err.requestOptions.uri}\n'
        'Message: ${err.message}\n'
        'Data: ${err.response?.data}',
        name: 'HTTP',
      );
    }
    super.onError(err, handler);
  }
}
