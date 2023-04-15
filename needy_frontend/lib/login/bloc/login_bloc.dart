import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginPasswordObscured>(_onPasswordObscured);
    on<LoginPasswordChanged>(_onPasswordChanged);
  }

  Future<void> _onPasswordObscured(
      LoginPasswordObscured event, Emitter<LoginState> emit) async {
    final obscurePassword = event.passwordObscured;

    emit(state.copyWith(obscurePasswordText: obscurePassword));
  }

  Future<void> _onPasswordChanged(
      LoginPasswordChanged event, Emitter<LoginState> emit) async {
    final passwordChanged = event.password;
    emit(
      state.copyWith(
        password: passwordChanged,
        passwordValid: true,
      ),
    );
  }
}
