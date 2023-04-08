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
    required this.name,
    required this.email,
    required this.lastName,
    required this.address,
    required this.password,
    required this.phone,
    required this.gender,
    required this.igAccount,
    required this.id,
    required this.birthDate,
    required this.country,
    required this.city,
    required this.state,
  });

  SignUpState.initial()
      : this(
          status: SignUpStatus.initial,
          name: '',
          email: '',
          lastName: '',
          address: '',
          password: '',
          phone: '',
          gender: "Male",
          igAccount: '',
          id: '',
          birthDate: DateTime.now(),
          country: '',
          city: '',
          state: '',
        );

  final SignUpStatus status;
  final String name;
  final String email;
  final String lastName;
  final String address;
  final String password;
  final String phone;
  final String gender;
  final String igAccount;
  final String id;
  final DateTime birthDate;
  final String country;
  final String city;
  final String state;

  SignUpState copyWith({
    SignUpStatus? status,
    String? name,
    String? email,
    String? lastName,
    String? address,
    String? password,
    String? phone,
    String? gender,
    String? igAccount,
    String? id,
    DateTime? birthDate,
    String? country,
    String? city,
    String? state,
  }) {
    return SignUpState(
      status: status ?? this.status,
      name: name ?? this.name,
      email: email ?? this.email,
      lastName: lastName ?? this.lastName,
      address: address ?? this.address,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      gender: gender ?? this.gender,
      igAccount: igAccount ?? this.igAccount,
      id: id ?? this.id,
      birthDate: birthDate ?? this.birthDate,
      country: country ?? this.country,
      city: city ?? this.city,
      state: state ?? this.state,
    );
  }

  @override
  List<Object?> get props => [
        status,
        name,
        email,
        lastName,
        address,
        password,
        phone,
        gender,
        igAccount,
        id,
        birthDate,
        country,
        city,
        state,
      ];
}
