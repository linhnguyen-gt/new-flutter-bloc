class BaseResponse<T> {
  final bool ok;
  final T? data;
  final int? status;

  BaseResponse({required this.ok, required this.data, this.status});
}
