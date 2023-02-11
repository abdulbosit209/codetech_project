part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeChanged extends ThemeEvent {
  const ThemeChanged({required this.themeData});

  final ThemeData themeData;

  @override
  List<Object?> get props => [themeData];
}
