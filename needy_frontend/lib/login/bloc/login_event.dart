part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginPasswordObscured extends LoginEvent {
  const LoginPasswordObscured({
    required this.passwordObscured,
  });

  final bool passwordObscured;

  @override
  List<Object?> get props => [passwordObscured];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged({
    required this.password,
  });

  final String password;

  @override
  List<Object?> get props => [password];
}
