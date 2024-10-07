import 'package:flutter/material.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/on_boarding/domain/entity/on_boarding.dart';

class BoardingSkipWidget extends StatelessWidget {
  final OnBoarding boarding;

  const BoardingSkipWidget({required this.boarding, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(boarding.image),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "المتابعة كضيف",
            style: TextStyles.font14WhiteColorWeight300,
          ),
        ),
      ],
    );
  }
}
