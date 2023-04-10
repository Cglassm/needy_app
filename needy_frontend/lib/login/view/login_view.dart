import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:needy_app_ui/needy_app_ui.dart';
import 'package:needy_frontend/login/login.dart';
import 'package:needy_frontend/sign_up/sign_up.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.error) {
          Navigator.of(context).pop();
        }
      },
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: NAColors.white,
          appBar: NAAppBar(
            elevation: 0,
            backgroundColor: NAColors.oceanBlue,
            widgetTitle: Text(
              "Needy App",
              style: NATextStyle.headline3.copyWith(color: NAColors.white),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: NASpacing.s20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: NASpacing.xxxlg),
                      const NATextField.emailTextField(),
                      const SizedBox(height: NASpacing.s20),
                      const PasswordInput(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("Olvidaste tu contraseña?")),
                      ),
                      NAOutlinedButton.primary(
                        text: "Ingresar",
                        onPressed: () {
                          print("boton");
                        },
                      ),
                      const SizedBox(height: NASpacing.s20),
                      NAOutlinedButton.primary(
                        text: "Registrarse",
                        onPressed: () {
                          Navigator.of(context).push(SignUpPage.route());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
