part of 'auth_bloc.dart';

@freezed
class AuthState extends BaseBlocState with _$AuthState {
  const factory AuthState({
    @Default('test@test.com') String email,
    @Default('123456') String password,
  }) = _AuthState;
}
