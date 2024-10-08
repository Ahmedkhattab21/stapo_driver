import 'package:flutter/material.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';

class SuccessButtonWidget extends StatelessWidget {
  const SuccessButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
        buttonText: "الاستمرار لتسجيل الدخول",
        buttonHeight: 50,
        buttonWidth: double.infinity,
        borderRadius: 12,
        backGroundColor: AppColors.yellowColor,
        borderColor: Colors.transparent,
        textStyle: TextStyles.font14BlackColorWeight500,
        boxShadow: BoxShadow(
            offset: Offset(15,15),
            spreadRadius: 0,
            blurRadius: 25,
            color: AppColors.purpleColorDC.withOpacity(.16)
        ),
        onPressed: () {});
  }
}
