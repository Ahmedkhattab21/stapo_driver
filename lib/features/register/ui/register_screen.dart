import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/features/register/ui/widgets/name_field_widget.dart';
import 'package:stapo_driver/features/register/ui/widgets/phone_field_widget.dart';
import 'package:stapo_driver/features/register/ui/widgets/register_button_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: Text("Create Account",
              style: TextStyles.font14BlackColorWeight400),
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(40),
                Text(
                  "Let us get \n to know more Info \n about you",
                  textAlign: TextAlign.center,
                  style: TextStyles.font25BlackColorEWeight600,
                ),
                verticalSpace(50),
                NameFieldWidget(),
                verticalSpace(25),
                PhoneFieldWidget(),
                verticalSpace(35),
                Text(
                  "سنرسل رمز تحقق مكون من 4 أرقام \n لتأكيد رقم الجوال",
                  textAlign: TextAlign.center,
                  style: TextStyles.font15BlackColorWeight400,
                ),
                verticalSpace(40),
                RegisterButtonWidget(),
                verticalSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
