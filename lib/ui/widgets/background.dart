import 'package:codetech1/utils/icons.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        isDark ? MyIcons.darkBackground : MyIcons.lightBackground,
        fit: BoxFit.cover,
      ),
    );
  }
}