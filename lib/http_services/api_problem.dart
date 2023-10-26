import 'package:http_status_code/http_status_code.dart';

import '../base/base_response.dart';

class HttpStatusCodes {
  static const httpStatusBadRequest = 400;
  static const httpStatusUnauthorized = 401;
  static const httpStatusForbidden = 403;
  static const httpStatusNotFound = 404;
  static const httpStatusInternalServerError = 500;
}

Future<BaseResponse<Data>>? apiProblem<Data>(
    BaseResponse<Map<String, dynamic>> response) {
  switch (response.statusCode) {
    case StatusCode.BAD_REQUEST:
      return null;
    case StatusCode.UNAUTHORIZED:
      return null;
    case StatusCode.FORBIDDEN:
      return null;
    case StatusCode.NOT_FOUND:
      return null;
    case StatusCode.INTERNAL_SERVER_ERROR:
      return null;
    default:
      return null;
  }
}

class Data {}
