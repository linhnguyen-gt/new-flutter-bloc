part of 'auth_bloc.dart';

abstract class AuthEvent extends BaseBlocEvent {
  const AuthEvent();
}

@freezed
class EmailChanged extends AuthEvent with _$EmailChanged {
  const factory EmailChanged(String email) = _EmailChanged;
}

@freezed
class PasswordChanged extends AuthEvent with _$PasswordChanged {
  const factory PasswordChanged(String password) = _PasswordChanged;
}

@freezed
class SubmitLogin extends AuthEvent with _$SubmitLogin {
  const factory SubmitLogin() = _SubmitLogin;
}
