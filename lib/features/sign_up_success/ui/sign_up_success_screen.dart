import 'package:flutter_svg/flutter_svg.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/features/sign_up_success/ui/widgets/success_button_widget.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(60),
              SvgPicture.asset(ImageAsset.successImage),
              verticalSpace(60),
              Text("أهلا وسهلا", style: TextStyles.font21BlackColorWeight400),
              verticalSpace(10),
              Text("تهانينـا, لقد  انضممت لأسرة ستابوللمتسوقيـن",
                  textAlign: TextAlign.center,
                  style: TextStyles.font16BlackColorWeight400),
              const Spacer(),
              SuccessButtonWidget(),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
