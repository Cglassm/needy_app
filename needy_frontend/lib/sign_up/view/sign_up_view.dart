import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:needy_app_ui/needy_app_ui.dart';
import 'package:needy_frontend/sign_up/sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status == SignUpStatus.error) {
          // Handle Error
          Navigator.of(context).pop();
        }
      },
      child: const Scaffold(
        appBar: NAAppBar(),
        body: Center(
          child: Text("Sign up"),
        ),
      ),
    );
  }
}
