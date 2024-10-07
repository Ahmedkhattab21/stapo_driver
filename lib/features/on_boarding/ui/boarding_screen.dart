import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/on_boarding_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

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
              verticalSpace(10),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    child: Text(
                      "تخطي",
                      textAlign: TextAlign.center,
                      style: TextStyles.font20RedColorWeight400,
                    ),
                    onPressed: () {
                      ///
                    },
                  ),
                ],
              ),
              const Spacer(),
              const OnBoardingImages(
                  onBoardingImage: ImageAsset.boardingScreenImage),
              const Spacer(),
              Text(
                "مرحبا بك",
                textAlign: TextAlign.center,
                style: TextStyles.font20DarkBlueColor33Weight700,
              ),
              verticalSpace(30),
              ButtonWidget(
                  buttonHeight: 61.h,
                  buttonText: "إنشاء حساب",
                  backGroundColor: AppColors.redColor,
                  textStyle: TextStyles.font24WhiteColorWeight700,
                  borderRadius: 20.r,
                  onPressed: () {
                    context.pushNamed(Routes.registerScreen);
                  }),
              verticalSpace(20),
              ButtonWidget(
                  buttonHeight: 61.h,
                  buttonText: "تسجيل الدخول",
                  backGroundColor: AppColors.whiteColor,
                  textStyle: TextStyles.font24RedColorWeight700,
                  borderColor: AppColors.redColor,
                  borderRadius: 20.r,
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                    ///
                  }),
              verticalSpace(20),
              TextButton(
                child: Text(
                  "تسجيل الدخول كتاجر",
                  textAlign: TextAlign.center,
                  style: TextStyles.font20DarkBlueColor33Weight700,
                ),
                onPressed: () {},
              ),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
