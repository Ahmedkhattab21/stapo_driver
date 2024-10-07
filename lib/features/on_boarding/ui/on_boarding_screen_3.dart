import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/on_boarding_buttons.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/on_boarding_images.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/on_boarding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const OnBoardingImages(
                  onBoardingImage: ImageAsset.onBoardingImage3),
              const Spacer(),
              const OnBoardingText(
                  onBoardingText:
                      "رحلة سعيدة بالتطبيق \n ومفهوم أخر مع سيارة بلس"),
              verticalSpace(30),
              const OnBoardingButtons(onBoardingNumber: 3),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
