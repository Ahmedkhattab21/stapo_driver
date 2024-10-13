import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';

class EditAddressFieldWidget extends StatelessWidget {
  const EditAddressFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: "ادخل العنوان",
      maxLines: 1,
      hintStyle: TextStyles.font14BlackColor1Weight300,
      style: TextStyles.font14BlackColor1Weight400,
      controller: TextEditingController(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.greyColorE1,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.greyColorE1,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      validator: (String? value) {},
      onchange: (String? value) {},
      keyboardType: TextInputType.text,
    );
  }
}
