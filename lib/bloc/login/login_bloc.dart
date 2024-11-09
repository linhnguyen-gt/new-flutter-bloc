import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../base/bloc/base_bloc.dart';
import '../../base/bloc/base_bloc_event.dart';
import '../../base/bloc/base_bloc_state.dart';
import '../../navigation/app_router.gr.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SubmitLogin>(_onSubmitLogin);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitLogin(
      SubmitLogin event, Emitter<LoginState> emit) async {
    await blocCatch(actions: () async {
      await Future.delayed(const Duration(seconds: 2));
      await navigator.replace(const RouteOne());
    });
  }
}
