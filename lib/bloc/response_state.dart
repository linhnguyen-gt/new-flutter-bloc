part of 'response_bloc.dart';

@freezed
class ResponseState extends BaseBlocState with _$ResponseState {
  const factory ResponseState({
    @Default([]) List<ResponseModel> data,
    @Default(0) int count,
  }) = _ResponseState;
}
