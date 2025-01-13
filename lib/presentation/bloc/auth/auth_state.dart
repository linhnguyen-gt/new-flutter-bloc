part of 'auth_bloc.dart';

@freezed
class AuthState extends MainBlocState with _$AuthState {
  const factory AuthState({
    @Default('test@test.com') String email,
    @Default('123456') String password,
  }) = _AuthState;
}
