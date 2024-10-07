import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';

class GoogleLoginWidget extends StatelessWidget {
  const GoogleLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50.h,
        width: 72.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: AppColors.whiteColorF5,
          borderRadius: BorderRadius.circular(28.r),
        ),
        child: SvgPicture.asset(ImageAsset.googleIcon),
      ),
    );
  }
}
