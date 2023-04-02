part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  loaded,
  error,
}

class SignUpState extends Equatable {
  const SignUpState({
    required this.status,
  });

  const SignUpState.initial()
      : this(        
          status: SignUpStatus.initial,
        );

  final SignUpStatus status;

  SignUpState copyWith({
    SignUpStatus? status,
  }) {
    return SignUpState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
