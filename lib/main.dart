import 'package:codetech1/bloc/timer_bloc/timer_bloc.dart';
import 'package:codetech1/data/repository/timer_repository.dart';
import 'package:codetech1/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme_bloc/theme_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => TimerRepository())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => TimerBloc(repository: context.read<TimerRepository>()) ..add(TimerStarted())),
          BlocProvider(create: (BuildContext context) => ThemeBloc())
        ],
        child: MyApp(),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state.theme,
            home: HomePage(),
          );
        }
    );
  }
}
