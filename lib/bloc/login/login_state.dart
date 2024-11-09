part of 'login_bloc.dart';

@freezed
class LoginState extends BaseBlocState with _$LoginState {
  const factory LoginState({
    @Default('test@test.com') String email,
    @Default('123456') String password,
  }) = _LoginState;
}
