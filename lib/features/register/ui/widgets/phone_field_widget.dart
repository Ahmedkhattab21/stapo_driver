import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';
import 'package:stapo_driver/features/register/domain/entity/selected_country.dart';
import 'package:stapo_driver/features/register/ui/widgets/select_nationality_register.dart';

class PhoneFieldWidget extends StatelessWidget {
  final SelectedCountry _selectedCountry = SelectedCountry();

  PhoneFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: AppTextFormField(
        hintText: "رقم الجوال",
        hintStyle: TextStyles.font15BlackColorFWeight400,
        style: TextStyles.font15BlackColorWeight400,
        backgroundColor: AppColors.whiteColor,
        prefixIcon: SizedBox(
          width: 130.w,
          child: SelectNationalityRegister(
            selectedCountry: _selectedCountry,
          ),
        ),
        validator: (String? value) {},
        onchange: (String? value) {},
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColorE5)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColorE5)),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
