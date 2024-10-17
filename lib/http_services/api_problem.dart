import 'package:http_status_code/http_status_code.dart';

import '../base/base_response.dart';

class ApiException implements Exception {
  final String message;
  final int statusCode;

  ApiException(this.message, {required this.statusCode});

  @override
  String toString() => 'ApiException: $message (Status code: $statusCode)';
}

abstract class IErrorHandler {
  ApiException handleError(int statusCode);
}

class DefaultErrorHandler implements IErrorHandler {
  final Map<int, String> _errorMessages = {
    StatusCode.BAD_REQUEST: 'Bad request',
    StatusCode.UNAUTHORIZED: 'Unauthorized access',
    StatusCode.FORBIDDEN: 'Forbidden access',
    StatusCode.NOT_FOUND: 'Resource not found',
    StatusCode.INTERNAL_SERVER_ERROR: 'Internal server error',
    StatusCode.UNPROCESSABLE_ENTITY: 'Unprocessable entity',
    StatusCode.SERVICE_UNAVAILABLE: 'Service unavailable',
    StatusCode.GATEWAY_TIMEOUT: 'Gateway timeout',
    StatusCode.TOO_MANY_REQUESTS: 'Too many requests',
    StatusCode.CONFLICT: 'Conflict',
    StatusCode.PRECONDITION_FAILED: 'Precondition failed',
  };

  @override
  ApiException handleError(int statusCode) {
    if (_errorMessages.containsKey(statusCode)) {
      return ApiException(_errorMessages[statusCode]!, statusCode: statusCode);
    } else if (statusCode >= 400 && statusCode < 500) {
      return ApiException('Client error', statusCode: statusCode);
    } else if (statusCode >= 500) {
      return ApiException('Server error', statusCode: statusCode);
    }
    return ApiException('Unknown error', statusCode: statusCode);
  }
}

class ApiProblemHandler {
  final IErrorHandler _errorHandler;

  ApiProblemHandler(this._errorHandler);

  Future<BaseResponse<T>> handleApiProblem<T>(BaseResponse<dynamic> response) {
    if (response.statusCode == null) {
      return Future.error(ApiException('Invalid status code', statusCode: -1));
    }
    return Future.error(_errorHandler.handleError(response.statusCode!));
  }
}

final errorHandler = DefaultErrorHandler();
final apiProblemHandler = ApiProblemHandler(errorHandler);

Future<BaseResponse<T>> apiProblem<T>(BaseResponse<dynamic> response) {
  return apiProblemHandler.handleApiProblem(response);
}
