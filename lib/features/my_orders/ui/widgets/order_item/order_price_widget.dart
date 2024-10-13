import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class OrderPriceWidget extends StatelessWidget {
  const OrderPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "sR 20",
          style: TextStyles.font13BlackColor2Weight400,
        ),
        horizontalSpace(5),
        Text(
          "x",
          style: TextStyles.font13WhiteColorB7Weight400,
        ),
        horizontalSpace(5),
        Text(
          "3",
          style: TextStyles.font14BlackColor3Weight400,
        ),
        horizontalSpace(5),
        Container(
          height: 12.h,
          width: 2.5.w,
          color: AppColors.whiteColorD2,
        ),
        horizontalSpace(5),
        Text(
          "SR 60.00",
          style: TextStyles.font18BlackColor3Weight400,
        ),
      ],
    );
  }
}
