import 'package:flutter/material.dart';
import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';

class BoardingButtonsWidget extends StatelessWidget {
  const BoardingButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(
            buttonHeight: 50,
            buttonWidth: 140,
            borderRadius: 12,
            buttonText: "تسجيل الدخول",
            backGroundColor: AppColors.yellowColor,
            borderColor: Colors.transparent,
            textStyle: TextStyles.font14BlackColor2EWeight700,
            boxShadow: BoxShadow(
                offset: Offset(15,15),
                spreadRadius: 0,
                blurRadius: 25,
                color: AppColors.purpleColorDC.withOpacity(.16)
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            }),
        horizontalSpace(20),
        ButtonWidget(
            buttonHeight: 50,
            buttonWidth: 140,
            borderRadius: 12,
            buttonText: "حساب جديد",
            backGroundColor: Colors.transparent,
            borderColor: AppColors.whiteColor5,
            textStyle: TextStyles.font14WhiteColorEWeight700,
            boxShadow: BoxShadow(
                offset: Offset(0,15),
                spreadRadius: 0,
                blurRadius: 12.5,
                color: AppColors.greyColor6B.withOpacity(.1)
            ),
            onPressed: () {
              context.pushNamed(Routes.registerScreen);
            }),
      ],
    );
  }
}
