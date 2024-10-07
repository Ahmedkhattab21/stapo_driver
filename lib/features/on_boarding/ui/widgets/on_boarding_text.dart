import 'package:stapo_driver/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  final String onBoardingText;

  const OnBoardingText({required this.onBoardingText, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      onBoardingText,
      textAlign: TextAlign.center,
      style: TextStyles.font20DarkBlueColorWeight700,
    );
  }
}
