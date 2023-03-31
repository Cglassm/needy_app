import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:needy_frontend/login/login.dart';

class LoginRoute extends StatelessWidget {
  const LoginRoute({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (ctx) {
        return BlocProvider(
          create: (_) => LoginBloc(),
          child: const LoginView(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}
