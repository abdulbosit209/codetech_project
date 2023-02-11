import 'package:codetech1/utils/icons.dart';
import 'package:flutter/material.dart';

class GerbImage extends StatelessWidget {
  const GerbImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.0, -1.0),
      child: SizedBox(
        height: 120,
        width: 120,
        child: Image.asset(
          MyIcons.gerb,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}