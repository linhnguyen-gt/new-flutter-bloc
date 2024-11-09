part of 'login_bloc.dart';

abstract class LoginEvent extends BaseBlocEvent {
  const LoginEvent();
}

@freezed
class EmailChanged extends LoginEvent with _$EmailChanged {
  const factory EmailChanged(String email) = _EmailChanged;
}

@freezed
class PasswordChanged extends LoginEvent with _$PasswordChanged {
  const factory PasswordChanged(String password) = _PasswordChanged;
}

@freezed
class SubmitLogin extends LoginEvent with _$SubmitLogin {
  const factory SubmitLogin() = _SubmitLogin;
}
