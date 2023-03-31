part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loading,
  loaded,
  error,
}

class LoginState extends Equatable {
  const LoginState({
    required this.status,
  });

  const LoginState.initial()
      : this(        
          status: LoginStatus.initial,
        );

  final LoginStatus status;

  LoginState copyWith({
    LoginStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
