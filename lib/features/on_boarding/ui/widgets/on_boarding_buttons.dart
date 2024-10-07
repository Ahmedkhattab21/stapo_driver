import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/services/cache_helper.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/app_strings.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingButtons extends StatelessWidget {
  final int onBoardingNumber;

  const OnBoardingButtons({required this.onBoardingNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: onBoardingNumber == 1
              ? 1
              : onBoardingNumber == 2
                  ? 2
                  : 3,
          child: ElevatedButton(
              onPressed: () {
                if (onBoardingNumber == 1) {
                  context.pushNamed(Routes.onBoardingScreen2);
                } else if (onBoardingNumber == 2) {
                  context.pushNamed(Routes.onBoardingScreen3);
                } else {
                  CacheHelper.setData(AppStrings.saveIsOnBoardingToShared, true);
                  // OnBoardingCubit.get(context).setOnBoardingWatch();
                  context.pushNamedAndRemoveUntil(Routes.boardingScreen,
                      predicate: (route) => false);
                }
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                backgroundColor: AppColors.redColor,
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(onBoardingNumber == 3 ? "هيا لنبدأ" : "التالي",
                      style: TextStyles.font24WhiteColorWeight700),
                  horizontalSpace(10),
                  SvgPicture.asset(ImageAsset.carIcon),
                ],
              )),
        ),
        if (onBoardingNumber != 3)
          Expanded(
            flex: onBoardingNumber == 1
                ? 1
                : onBoardingNumber == 2
                    ? 1
                    : 0,
            child: TextButton(
                onPressed: () {
                  CacheHelper.setData(AppStrings.saveIsOnBoardingToShared, true);

                  // OnBoardingCubit.get(context).setOnBoardingWatch();
                  context.pushNamedAndRemoveUntil(Routes.boardingScreen,
                      predicate: (route) => false);
                },
                child: Text("تخطي", style: TextStyles.font24RedColorWeight400)),
          ),
      ],
    );
  }
}
