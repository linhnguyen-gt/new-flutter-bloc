part of 'response_bloc.dart';

@freezed
class ResponseState extends MainBlocState with _$ResponseState {
  const factory ResponseState({@Default([]) List<ResponseEntity> data}) =
      _ResponseState;
}
