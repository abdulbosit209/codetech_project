import 'package:flutter/material.dart';

class BlueFrame extends StatelessWidget {
  const BlueFrame({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.0, -0.6),
      child: Container(
        height: height * 0.65,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: const Color(0xFF0065D7),
          ),
        ),
      ),
    );
  }
}