import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/forget_password/domain/entity/selected_country.dart';
import 'package:stapo_driver/features/forget_password/logic/forget_password_cubit.dart';
import 'package:stapo_driver/features/login/data/models/get_country_response.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectNationalityForgetPassword extends StatefulWidget {
  final SelectedCountry selectedCountry;

  const SelectNationalityForgetPassword(
      {required this.selectedCountry, super.key});

  @override
  State<SelectNationalityForgetPassword> createState() =>
      _SelectNationalityForgetPasswordState();
}

class _SelectNationalityForgetPasswordState
    extends State<SelectNationalityForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.public,
            // color: AppColors.grey200Color,
            size: 22.r,
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: DropdownButton<GetCountryResponse>(
                dropdownColor: AppColors.whiteColor,
                isExpanded: true,
                hint: Text(
                  "اختار دولتك",
                  style: TextStyles.font15BlackColorFWeight400,
                ),
                value: widget.selectedCountry.selectedCountry,
                underline: const SizedBox(),
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 20.r,
                  color: AppColors.blackColor,
                ),
                items: ForgetPasswordCubit.get(context).countries.map((status) {
                  return DropdownMenuItem(
                    value: status,
                    child: Text(
                      status.name,
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.blackColor,
                              ),
                    ),
                  );
                }).toList(),
                onChanged: (GetCountryResponse? value) {
                  widget.selectedCountry.setSelectedCountry(value!);
                  setState(() {});
                }),
          ),
        ],
      ),
    );
  }
}
