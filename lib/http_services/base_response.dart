class BaseResponse<T> {
  final bool ok;
  final T? data;
  final int? statusCode;

  BaseResponse({required this.ok, required this.data, this.statusCode});
}
