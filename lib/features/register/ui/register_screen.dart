import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                // Center(child: Image.asset(ImageAsset.logoImage)),
                verticalSpace(60),
                Center(
                  child:
                      Text("مرحبا!", style: TextStyles.font26RedColorWeight700),
                ),
                verticalSpace(20),
                Text("الأسم*",
                    style: TextStyles.font15DarkBlueColor33Weight400),
                verticalSpace(10),
                AppTextFormField(
                  hintText: "ادخل  الاسم ",
                  hintStyle: TextStyles.font16GreyColorWeight400,
                  validator: (String? value) {},
                  onchange: (String? value) {},
                  keyboardType: TextInputType.name,
                ),
                verticalSpace(20),
                Text("البريد الالكتروني*",
                    style: TextStyles.font15DarkBlueColor33Weight400),
                verticalSpace(10),
                AppTextFormField(
                  hintText: "ادخل البريد الالكتروني  ",
                  hintStyle: TextStyles.font16GreyColorWeight400,
                  validator: (String? value) {},
                  onchange: (String? value) {},
                  keyboardType: TextInputType.emailAddress,
                ),
                verticalSpace(20),
                Text("رقم الجوال*",
                    style: TextStyles.font15DarkBlueColor33Weight400),
                verticalSpace(10),
                AppTextFormField(
                  hintText: "5XXXXXXXX",
                  hintStyle: TextStyles.font16GreyColorWeight400,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12.r),
                    child: Text(
                      "+966",
                      style: TextStyles.font15RedColorWeight700,
                    ),
                  ),
                  validator: (String? value) {},
                  onchange: (String? value) {},
                  keyboardType: TextInputType.phone,
                ),
                verticalSpace(20),
                Text("كلمة المرور*",
                    style: TextStyles.font15DarkBlueColor33Weight400),
                verticalSpace(10),
                AppTextFormField(
                  hintText: "********",
                  hintStyle: TextStyles.font16GreyColorWeight400,
                  validator: (String? value) {},
                  onchange: (String? value) {},
                  keyboardType: TextInputType.visiblePassword,
                ),
                verticalSpace(20),
                Text.rich(
                  textAlign: TextAlign.start,
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "النقر علي اشترك الان يعني أنك قرأت ووافقت علي",
                          style: TextStyles.font12DarkBlueColor33Weight400),
                      TextSpan(
                          text: " الأحكام والشروط",
                          style: TextStyles.font12DarkBlueColor33Weight400
                              .copyWith(
                                  color: AppColors.redColor,
                                  fontWeight: FontWeight.w700),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // context.pushNamed(Routes.registerScreen);
                            }),
                      TextSpan(
                          text: " الخاصة باستخدام تطبيق تشليح ",
                          style: TextStyles.font12DarkBlueColor33Weight400),
                    ],
                  ),
                ),
                verticalSpace(20),
                ButtonWidget(
                    buttonText: "اشترك الان",
                    borderRadius: 20.r,
                    backGroundColor: AppColors.redColor,
                    textStyle: TextStyles.font20WhiteColorWeight700,
                    onPressed: () {}),
                verticalSpace(30),
                Center(
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "لديك حساب بالفعل؟",
                            style: TextStyles.font18DarkBlueColor33Weight400),
                        TextSpan(
                            text: "تسجيل الدخول",
                            style: TextStyles.font18DarkBlueColor33Weight400
                                .copyWith(
                              color: AppColors.redColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context
                                    .pushReplacementNamed(Routes.loginScreen);
                              }),
                      ],
                    ),
                  ),
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
