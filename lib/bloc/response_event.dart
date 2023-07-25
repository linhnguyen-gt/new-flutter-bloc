part of 'response_bloc.dart';

abstract class ResponseEvent extends BaseBlocEvent {
  const ResponseEvent();
}

@freezed
class CallResponse extends ResponseEvent with _$CallResponse {
  const factory CallResponse() = _CallResponse;
}

@freezed
class Count extends ResponseEvent with _$Count {
  const factory Count() = _Count;
}
