import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';

class NameFieldWidget extends StatelessWidget {
  const NameFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: AppTextFormField(
        hintText: "الاسم بالكامـل",
        hintStyle: TextStyles.font15BlackColorFWeight400,
        style: TextStyles.font15BlackColorWeight400,
        backgroundColor: AppColors.whiteColor,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(ImageAsset.personIcon),
        ),
        validator: (String? value) {},
        onchange: (String? value) {},
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColorE5)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColorE5)),
        keyboardType: TextInputType.name,
      ),
    );
  }
}
