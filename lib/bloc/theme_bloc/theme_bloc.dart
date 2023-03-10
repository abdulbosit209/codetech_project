import 'package:bloc/bloc.dart';
import 'package:codetech1/theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(theme: appThemeData[AppTheme.light]!)) {
    on<ThemeChanged>((event, emit) {
      emit(ThemeState(theme: event.themeData));
    });
  }
}
