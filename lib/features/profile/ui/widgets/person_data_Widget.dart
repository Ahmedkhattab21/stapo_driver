import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class PersonDataWidget extends StatelessWidget {
  const PersonDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 41.r,
          width: 41.r,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              ImageAsset.onBoardingImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        horizontalSpace(23),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("اهلا, خالد", style: TextStyles.font17BlackColorEWeight700),
            verticalSpace(3),
            Text("نتمنى لك دوام الصحة و العافية",
                style: TextStyles.font13BlackColorEWeight300),
          ],
        )
      ],
    );
  }
}
