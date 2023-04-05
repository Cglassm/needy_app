import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:needy_app_ui/needy_app_ui.dart';
import 'package:needy_frontend/sign_up/sign_up.dart';
import 'package:needy_frontend/utils/utils.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: NASpacing.s10);

    return Scaffold(
      appBar: const NAAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: NASpacing.s20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: NASpacing.xlg),
              const _NameTextFields(),
              NATextField.emailTextField(
                onChanged: (email) {
                  context.read<SignUpBloc>().add(
                        SignUpEmailChanged(
                          email: email,
                        ),
                      );
                },
              ),
              separator,
              NATextField(
                hintText: "Password",
                onChanged: (password) {
                  context.read<SignUpBloc>().add(
                        SignUpPasswordChanged(
                          password: password,
                        ),
                      );
                },
              ),
              separator,
              NATextField(
                prefix: const Icon(Icons.phone),
                onChanged: (phoneNumber) {
                  context.read<SignUpBloc>().add(
                        SignUpPhoneChanged(
                          phone: phoneNumber,
                        ),
                      );
                },
              ),
              separator,
              NATextField(
                hintText: "Address",
                onChanged: (address) {
                  context.read<SignUpBloc>().add(
                        SignUpAddressChanged(
                          address: address,
                        ),
                      );
                },
              ),
              separator,
              Row(
                children: const [
                  _DateOfBirth(),
                ],
              ),
              const SizedBox(height: NASpacing.xlg),
              NAOutlinedButton.primary(
                onPressed: () {},
                text: "Sign up",
              ),
              const SizedBox(height: NASpacing.s50),
            ],
          ),
        ),
      ),
    );
  }
}

class _NameTextFields extends StatelessWidget {
  const _NameTextFields();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: NATextField(
            hintText: "Name",
            onChanged: (name) {
              context.read<SignUpBloc>().add(
                    SignUpNameChanged(
                      name: name,
                    ),
                  );
            },
          ),
        ),
        const SizedBox(width: NASpacing.s20),

        // Last Name TextField
        Expanded(
          child: NATextField(
            hintText: "Last Name",
            onChanged: (lastName) {
              context.read<SignUpBloc>().add(
                    SignUpLastNameChanged(
                      lastName: lastName,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}

class _DateOfBirth extends StatelessWidget {
  const _DateOfBirth();

  @override
  Widget build(BuildContext context) {
    final state = context.select((SignUpBloc bloc) => bloc.state);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date of Birth",
          style: NATextStyle.bodyText2,
        ),
        const SizedBox(height: NASpacing.s10),
        BirthDateWidget(
          initialDate: state.birthDate,
          formattedBirthdate: DateHelper.getFormattedBirthDate(
            birthDate: state.birthDate,
          ),
          isBirthDateValid: true,
          onDateTimeChanged: (birthDate) {
            context.read<SignUpBloc>().add(
                  SignUpBirthDateChanged(birthDate: birthDate),
                );
          },
        ),
      ],
    );
  }
}
