import 'package:codetech1/bloc/theme_bloc/theme_bloc.dart';
import 'package:codetech1/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({
    super.key,
  });

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Switch(value: _value, onChanged: onChanged);
  }

  void onChanged(bool value) {
    setState(() {
      _value = value;
      if (_value == true) {
        context.read<ThemeBloc>().add(
              ThemeChanged(themeData: appThemeData[AppTheme.dark]!),
            );
      } else {
        context.read<ThemeBloc>().add(
              ThemeChanged(themeData: appThemeData[AppTheme.light]!),
            );
      }
    });
  }
}
