import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:needy_app_ui/needy_app_ui.dart';
import 'package:needy_frontend/sign_up/sign_up.dart';

class StateCountryCityDropDown extends StatelessWidget {
  const StateCountryCityDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectState(
        style: NATextStyle.bodyText1,
        onCountryChanged: (country) {
          context.read<SignUpBloc>().add(
                SignUpCountryChanged(country: country),
              );
        },
        onStateChanged: (state) {
          context.read<SignUpBloc>().add(
                SignUpStateChanged(state: state),
              );
        },
        onCityChanged: (city) {
          context.read<SignUpBloc>().add(
                SignUpCityChanged(city: city),
              );
        });
  }
}
