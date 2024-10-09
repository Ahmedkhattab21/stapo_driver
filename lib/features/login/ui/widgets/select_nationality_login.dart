import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/login/logic/login_cubit.dart';
import 'package:stapo_driver/features/register/data/models/get_country_response.dart';
import 'package:stapo_driver/features/register/domain/entity/selected_country.dart';
import 'package:stapo_driver/features/register/logic/register_cubit.dart';

class SelectNationalityLogin extends StatefulWidget {
  final SelectedCountry selectedCountry;

  const SelectNationalityLogin(
      {required this.selectedCountry, super.key});

  @override
  State<SelectNationalityLogin> createState() =>
      _SelectNationalityLoginState();
}

class _SelectNationalityLoginState
    extends State<SelectNationalityLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: TextStyles.font15DarkBlueColor33Weight400,
              ),
              value: widget.selectedCountry.selectedCountry,
              underline: const SizedBox(),
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 20.r,
                color: AppColors.blackColor,
              ),
              items: LoginCubit.get(context).countries.map((status) {
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
    );
  }
}
