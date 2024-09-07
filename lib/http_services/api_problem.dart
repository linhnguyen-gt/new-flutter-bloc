import 'package:http_status_code/http_status_code.dart';

import '../base/base_response.dart';

class ApiException implements Exception {
  final String message;
  final int statusCode;

  ApiException(this.message, {required this.statusCode});

  @override
  String toString() => 'ApiException: $message (Status code: $statusCode)';
}

Future<BaseResponse<T>> apiProblem<T>(BaseResponse<dynamic> response) {
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
    case StatusCode.UNPROCESSABLE_ENTITY:
      return Future.error(ApiException('Unprocessable entity',
          statusCode: StatusCode.UNPROCESSABLE_ENTITY));
    case StatusCode.SERVICE_UNAVAILABLE:
      return Future.error(ApiException('Service unavailable',
          statusCode: StatusCode.SERVICE_UNAVAILABLE));
    case StatusCode.GATEWAY_TIMEOUT:
      return Future.error(ApiException('Gateway timeout',
          statusCode: StatusCode.GATEWAY_TIMEOUT));
    case StatusCode.TOO_MANY_REQUESTS:
      return Future.error(ApiException('Too many requests',
          statusCode: StatusCode.TOO_MANY_REQUESTS));
    case StatusCode.CONFLICT:
      return Future.error(
          ApiException('Conflict', statusCode: StatusCode.CONFLICT));
    case StatusCode.PRECONDITION_FAILED:
      return Future.error(ApiException('Precondition failed',
          statusCode: StatusCode.PRECONDITION_FAILED));
    default:
      if (response.statusCode! >= 400 && response.statusCode! < 500) {
        return Future.error(
            ApiException('Client error', statusCode: response.statusCode!));
      } else if (response.statusCode! >= 500) {
        return Future.error(
            ApiException('Server error', statusCode: response.statusCode!));
      }
      return Future.error(
          ApiException('Unknown error', statusCode: response.statusCode!));
  }
}

class Data {}
