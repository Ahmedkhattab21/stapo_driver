import 'package:flutter/material.dart';

class OnBoardingImages extends StatelessWidget {
  final String onBoardingImage;

  const OnBoardingImages({required this.onBoardingImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(onBoardingImage);
  }
}
