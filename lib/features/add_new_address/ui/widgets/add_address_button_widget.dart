import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';

class AddAddressButtonWidget extends StatelessWidget {
  const AddAddressButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      buttonHeight: 50,
      buttonWidth: double.infinity,
      borderRadius: 12,
      buttonText: "إضافـة عنـوان",
      backGroundColor: AppColors.yellowColor,
      textStyle: TextStyles.font14BlackColorWeight700,
      onPressed: () {
        context.pop();
      },
    );
  }
}
