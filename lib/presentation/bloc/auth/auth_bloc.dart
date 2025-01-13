import 'package:bloc_small/bloc_small.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_cases/auth/login.dart';
import '../../../domain/use_cases/auth/register.dart';
import '../../../navigation/app_router.gr.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends MainBloc<AuthEvent, AuthState> {
  final Login login;
  final Register register;

  AuthBloc(this.login, this.register) : super(const AuthState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SubmitLogin>(_onSubmitLogin);
  }

  void _onEmailChanged(EmailChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitLogin(
      SubmitLogin event, Emitter<AuthState> emit) async {
    await blocCatch(actions: () async {
      await login(state.email, state.password);
      await navigator?.replace(const RouteOne());
    });
  }
}
