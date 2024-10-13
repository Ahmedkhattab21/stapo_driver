import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/select_nationality_edit_profile.dart';
import 'package:stapo_driver/features/register/domain/entity/selected_country.dart';

class EditPhoneFieldWidget extends StatelessWidget {
  final SelectedCountry _selectedCountry = SelectedCountry();

   EditPhoneFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: "",
      maxLines: 1,
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
      prefixIcon: SizedBox(
        width: 130.w,
        child: SelectNationalityEditProfile(
          selectedCountry: _selectedCountry,
        ),
      ),
      validator: (String? value) {},
      onchange: (String? value) {},
      keyboardType: TextInputType.phone,
    );
  }
}
