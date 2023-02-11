import 'package:codetech1/bloc/timer_bloc/timer_bloc.dart';
import 'package:codetech1/ui/widgets/background.dart';
import 'package:codetech1/ui/widgets/blue_frame.dart';
import 'package:codetech1/ui/widgets/gerb.dart';
import 'package:codetech1/ui/widgets/switch_button.dart';
import 'package:codetech1/ui/widgets/text_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        actions: const [ToggleSwitch()],
      ),
      body: Stack(
        children: [
          BackgroundImage(isDark: isDark),
          BlueFrame(height: height, width: width),
          const GerbImage(),
          BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) {
              if (state is TimerTickedSuccess) {
                return TextContent(
                  height: height,
                  width: width,
                  clock: state.clock,
                  date: state.date,
                  month: state.month,
                  weekDay: state.weekDay,
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}






