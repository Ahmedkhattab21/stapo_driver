import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/login/data/models/get_country_response.dart';
import 'package:stapo_driver/features/login/logic/login_cubit.dart';
import 'package:stapo_driver/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectNationalityLogin extends StatelessWidget {
  const SelectNationalityLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) {
          return current is OnGetCountryLoadingState ||
              current is OnGetCountryErrorState ||
              current is OnGetCountryCatchErrorState ||
              current is OnGetCountrySuccessState ||
              current is OnChangeSelectedCountryState;
        },
        builder: (context, state) {
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
                    value: LoginCubit.get(context).selectedCountry,
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
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontSize: 14.sp,
                                color: AppColors.blackColor,
                              ),
                        ),
                      );
                    }).toList(),
                    onChanged: (GetCountryResponse? value) {
                      LoginCubit.get(context).changeSelectedCountry(value!);
                    }),
              ),
            ],
          );
        },
      ),
    );
  }
}
