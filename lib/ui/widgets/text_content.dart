import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  const TextContent({
    Key? key,
    required this.height,
    required this.width,
    required this.clock,
    required this.date,
    required this.month,
    required this.weekDay,
  }) : super(key: key);

  final double height;
  final double width;
  final String clock;
  final int date;
  final String month;
  final String weekDay;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.0, 0.0),
      child: SizedBox(
        height: height * 0.4,
        width: width * 0.8,
        child: Column(
          children: [
            Text(
              clock,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "$date $month",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              weekDay,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
