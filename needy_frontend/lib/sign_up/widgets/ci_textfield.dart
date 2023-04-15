import 'package:flutter/material.dart';
import 'package:needy_app_ui/needy_app_ui.dart';

class CITextfield extends StatelessWidget {
  const CITextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NATextField(
      hintText: "Documento (sin puntos ni guiones)",
      onChanged: (cedula) {
        //TODO: Add event
      },
    );
  }
}
