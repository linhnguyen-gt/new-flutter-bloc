import 'package:dio/dio.dart';

class HttpClientOptions {
  final String baseUrl;

  final Duration connectTimeout;

  final Duration receiveTimeout;

  final Duration sendTimeout;

  final Map<String, dynamic>? defaultHeaders;

  final bool enableLogging;

  final BaseOptions? dioOptions;

  const HttpClientOptions({
    required this.baseUrl,
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
    this.sendTimeout = const Duration(seconds: 30),
    this.defaultHeaders,
    this.enableLogging = true,
    this.dioOptions,
  });

  BaseOptions toDioOptions() {
    final options = dioOptions ?? BaseOptions();

    return options.copyWith(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: defaultHeaders,
    );
  }
}
