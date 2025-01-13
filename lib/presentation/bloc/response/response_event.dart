part of 'response_bloc.dart';

abstract class ResponseEvent extends MainBlocEvent {
  const ResponseEvent();
}

@freezed
class CallResponse extends ResponseEvent with _$CallResponse {
  const factory CallResponse() = _CallResponse;
}

@freezed
class ClickScreen extends ResponseEvent with _$ClickScreen {
  const factory ClickScreen() = _ClickScreen;
}

@freezed
class SetLoading extends ResponseEvent with _$SetLoading {
  const factory SetLoading() = _SetLoading;
}
