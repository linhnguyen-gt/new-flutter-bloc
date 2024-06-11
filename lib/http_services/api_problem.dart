import 'package:http_status_code/http_status_code.dart';

import '../base/base_response.dart';

class ApiException implements Exception {
  final String message;
  final int statusCode;

  ApiException(this.message, {required this.statusCode});

  @override
  String toString() => 'ApiException: $message (Status code: $statusCode)';
}

Future<BaseResponse<Data>> apiProblem<Data>(
    BaseResponse<Map<String, dynamic>> response) {
  switch (response.statusCode) {
    case StatusCode.BAD_REQUEST:
      return Future.error(
          ApiException('Bad request', statusCode: StatusCode.BAD_REQUEST));
    case StatusCode.UNAUTHORIZED:
      return Future.error(ApiException('Unauthorized access',
          statusCode: StatusCode.UNAUTHORIZED));
    case StatusCode.FORBIDDEN:
      return Future.error(
          ApiException('Forbidden access', statusCode: StatusCode.FORBIDDEN));
    case StatusCode.NOT_FOUND:
      return Future.error(
          ApiException('Resource not found', statusCode: StatusCode.NOT_FOUND));
    case StatusCode.INTERNAL_SERVER_ERROR:
      return Future.error(ApiException('Internal server error',
          statusCode: StatusCode.INTERNAL_SERVER_ERROR));
    default:
      return Future.error(
          ApiException('Unknown error', statusCode: response.statusCode!));
  }
}

class Data {}
