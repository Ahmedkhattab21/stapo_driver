import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/features/on_boarding/logic/on_boarding_cubit.dart';
import 'package:stapo_driver/features/on_boarding/logic/on_boarding_state.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      buildWhen: (current, previous) {
        return current is OnPageChangedState;
      },
      builder: (context, state) {
        return DotsIndicator(
          dotsCount: OnBoardingCubit.get(context).data.length,
          position: OnBoardingCubit.get(context).currentPage,
          decorator: DotsDecorator(
            color: AppColors.whiteColor.withOpacity(.7),
            activeColor: AppColors.whiteColor,
            size: Size.square(9.r),
            activeSize: Size(22.r, 10.r),
            spacing: EdgeInsets.all(4.w),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
          ),
        );
      },
    );
  }
}
