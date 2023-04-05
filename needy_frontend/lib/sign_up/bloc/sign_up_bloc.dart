import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState.initial()) {
    on<SignUpNameChanged>(_onSignUpNameChanged);
    on<SignUpLastNameChanged>(_onSignUpLastNameChanged);
    on<SignUpEmailChanged>(_onSignUpEmailChanged);
    on<SignUpPasswordChanged>(_onSignUpPasswordChanged);
    on<SignUpAddressChanged>(_onSignUpAddressChanged);
    on<SignUpPhoneChanged>(_onSignUpPhoneChanged);
    on<SignUpBirthDateChanged>(_onSignUpBirthDateChanged);
    on<SignUpGenderChanged>(_onSignUpGenderChanged);
  }

  Future<void> _onSignUpNameChanged(
      SignUpNameChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(name: event.name));
  }

  Future<void> _onSignUpLastNameChanged(
      SignUpLastNameChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(lastName: event.lastName));
  }

  Future<void> _onSignUpEmailChanged(
      SignUpEmailChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(email: event.email));
  }

  Future<void> _onSignUpPasswordChanged(
      SignUpPasswordChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSignUpAddressChanged(
      SignUpAddressChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(address: event.address));
  }

  Future<void> _onSignUpPhoneChanged(
      SignUpPhoneChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(phone: event.phone));
  }

  void _onSignUpBirthDateChanged(
    SignUpBirthDateChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      birthDate: event.birthDate,
    ));
  }

  Future<void> _onSignUpGenderChanged(
      SignUpGenderChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(gender: event.gender));
  }
}
