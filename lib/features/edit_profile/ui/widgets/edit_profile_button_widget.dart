import 'package:flutter/material.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';

class EditProfileButtonWidget extends StatelessWidget {
  const EditProfileButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      buttonHeight: 50,
      buttonWidth: double.infinity,
      borderRadius: 12,
      buttonText: "حفظ التغييـرات",
      backGroundColor: AppColors.yellowColor,
      textStyle: TextStyles.font14BlackColorEWeight700,
      onPressed: () {
        context.pop();
      },
    );
  }
}
