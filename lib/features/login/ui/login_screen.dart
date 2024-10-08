import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/features/login/ui/widgets/button_screen_widget.dart';
import 'package:stapo_driver/features/login/ui/widgets/email_field_widget.dart';
import 'package:stapo_driver/features/login/ui/widgets/google_login_widget.dart';
import 'package:stapo_driver/features/login/ui/widgets/password_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(40),
                Image.asset(
                  ImageAsset.stapoImage,
                  color: AppColors.blackColor,
                ),
                verticalSpace(60),
                Text(
                  "استمتع بالعديد من \n العروض والمكافآت على \n المشتريات",
                  textAlign: TextAlign.center,
                  style: TextStyles.font25BlackColorEWeight600,
                ),
                verticalSpace(40),
                EmailFieldWidget(),
                verticalSpace(20),
                PasswordFieldWidget(),
                verticalSpace(60),
                ButtonScreenWidget(),
                verticalSpace(30),
                Text("or use", style: TextStyles.font15BlackColorWeight400),
                verticalSpace(4),
                GoogleLoginWidget(),
                verticalSpace(30),
                Text("New Shopper?",
                    style: TextStyles.font14BlackColorWeight300),
                GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.registerScreen);
                    },
                    child: Text("Join Us",
                        style: TextStyles.font15BlackColorWeight600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
