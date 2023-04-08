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
    on<SignUpIgAccountChanged>(_onSignUpIgAccountChanged);
    on<SignUpCountryChanged>(_onSignUpCountryChanged);
    on<SignUpCityChanged>(_onSignUpCityChanged);
    on<SignUpStateChanged>(_onSignUpStateChanged);
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

  Future<void> _onSignUpIgAccountChanged(
      SignUpIgAccountChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(igAccount: event.igAccount));
  }

  Future<void> _onSignUpCountryChanged(
      SignUpCountryChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(country: event.country));
  }

  Future<void> _onSignUpCityChanged(
      SignUpCityChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(city: event.city));
  }

  Future<void> _onSignUpStateChanged(
      SignUpStateChanged event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(state: event.state));
  }
}
