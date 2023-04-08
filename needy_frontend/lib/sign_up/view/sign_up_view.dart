import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:needy_app_ui/needy_app_ui.dart';
import 'package:needy_frontend/sign_up/sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: NASpacing.s10);

    return BlocListener<SignUpBloc, SignUpState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Scaffold(
        appBar: const NAAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: NASpacing.s20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: NASpacing.xlg),
                const _NameTextFields(),
                const EmailTextField(),
                separator,
                const PasswordTextfield(),
                separator,
                const PhoneTextfield(),
                separator,
                const InstagramAccountTextfield(),
                separator,
                const AddressTextfield(),
                separator,
                const _GenderBirthTextfields(),
                separator,
                const StateCountryCityDropDown(),
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
      ),
    );
  }
}

class _GenderBirthTextfields extends StatelessWidget {
  const _GenderBirthTextfields();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DateOfBirthTextField(),
        GenderTextFieldDropDown(),
      ],
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
