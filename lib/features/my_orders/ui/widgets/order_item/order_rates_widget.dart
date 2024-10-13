import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class OrderRatesWidget extends StatelessWidget {
  const OrderRatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: AppColors.yellowColor31,
          size: 14.r,
        ),
        horizontalSpace(4),
        Text(
          "5",
          style: TextStyles.font12BlackColorWeight400,
        ),
        horizontalSpace(8),
        Container(
          height: 12.h,
          width: 2.w,
          color: AppColors.whiteColorE5,
        ),
        horizontalSpace(6),
        Text(
          "2,392",
          style: TextStyles.font12BlackColorWeight400,
        ),
        const Spacer(),
        Container(
          height: 28.h,
          width: 90.w,
          decoration: BoxDecoration(
            color: AppColors.whiteColorF5,
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("التقييـمات", style: TextStyles.font12BlackColor2Weight400),
              horizontalSpace(6),
              Icon(
                Icons.arrow_forward_ios,
                size: 12.r,
                color: AppColors.blackColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
