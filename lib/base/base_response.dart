import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';

@freezed
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    required bool ok,
    required T? data,
    int? statusCode,
  }) = _BaseResponse;
}
