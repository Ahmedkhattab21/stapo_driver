import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';

class AddAddressItemWidget extends StatelessWidget {
  TextEditingController addressController = TextEditingController();

  AddAddressItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: "",
      style: TextStyles.font14BlackColor1Weight400,
      controller: addressController,
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
      prefixIcon: Icon(
        Icons.location_on_rounded,
        color: AppColors.greyColor86,
        size: 20.r,
      ),
      validator: (String? value) {},
      onchange: (String? value) {},
      keyboardType: TextInputType.text,
    );
  }
}
