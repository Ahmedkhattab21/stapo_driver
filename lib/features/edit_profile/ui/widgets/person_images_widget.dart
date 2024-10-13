import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';

class PersonImagesWidget extends StatelessWidget {
  const PersonImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 113.r,
          width: 113.r,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14.r),
            child: Image.asset(
              ImageAsset.onBoardingImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48.h,
                width: 100.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.whiteColorF5,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Icon(
                  Icons.photo,
                  color: AppColors.blackColor,
                ),
              ),
            ),
            verticalSpace(17),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48.h,
                width: 100.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.whiteColorF5,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
