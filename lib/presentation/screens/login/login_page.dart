import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../base/base_page_state.dart';
import '../../../common/base/v_stack.dart';
import '../../../common/input/input.dart';
import '../../bloc/auth/auth_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, AuthBloc> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    child: VStack(
                      spacing: 32,
                      children: [
                        const SizedBox(height: 40),
                        // Logo or App Icon
                        Icon(
                          Icons.lock_outline,
                          size: 80,
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                        // Welcome Text
                        VStack(
                          spacing: 8,
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withValues(alpha: 0.9),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Sign in to continue',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withValues(alpha: 0.7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        // Login Form
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: VStack(
                            spacing: 24,
                            children: [
                              Input(
                                title: 'Email',
                                value: state.email,
                                hintText: 'Enter your email',
                                prefixIcon: const Icon(Icons.email_outlined),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                      errorText: 'Please enter your email'),
                                  FormBuilderValidators.email(
                                      errorText: 'Please enter a valid email'),
                                  FormBuilderValidators.maxLength(50,
                                      errorText: 'Email is too long'),
                                ]),
                                onChanged: (String value) =>
                                    bloc.add(EmailChanged(value)),
                              ),
                              Input(
                                title: 'Password',
                                value: state.password,
                                hintText: 'Enter your password',
                                prefixIcon: const Icon(Icons.lock_outlined),
                                isPassword: true,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                      errorText: 'Please enter your password'),
                                  FormBuilderValidators.minLength(6,
                                      errorText:
                                          'Password must be at least 6 characters'),
                                  FormBuilderValidators.maxLength(50,
                                      errorText: 'Password is too long'),
                                ]),
                                onChanged: (String value) =>
                                    bloc.add(PasswordChanged(value)),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    bloc.add(const SubmitLogin());
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
