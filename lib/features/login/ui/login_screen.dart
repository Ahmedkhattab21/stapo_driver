import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:stapo_driver/features/login/logic/login_cubit.dart';
import 'package:stapo_driver/features/login/logic/login_state.dart';
import 'package:stapo_driver/features/login/ui/widgets/select_nationality_login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                Center(child: Image.asset(ImageAsset.logoImage)),
                verticalSpace(60),
                Center(
                  child: Text("مرحبا بعودتك!",
                      style: TextStyles.font26RedColorWeight700),
                ),
                verticalSpace(20),
                SelectNationalityLogin(),
                verticalSpace(20),
                Text("رقم الجوال*",
                    style: TextStyles.font15DarkBlueColor33Weight400),
                verticalSpace(10),
                AppTextFormField(
                  hintText: "5XXXXXXXX",
                  hintStyle: TextStyles.font16GreyColorWeight400,
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
                verticalSpace(10),
                checkBoxRemindMe(context),
                verticalSpace(20),
                ButtonWidget(
                    buttonText: "تسجيل الدخول",
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
                            text: " ليس لديك حساب؟",
                            style: TextStyles.font18DarkBlueColor33Weight400),
                        TextSpan(
                            text: "اشتراك",
                            style: TextStyles.font18DarkBlueColor33Weight400
                                .copyWith(color: AppColors.redColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.pushReplacementNamed(Routes.registerScreen);
                              }),
                      ],
                    ),
                  ),
                ),
                verticalSpace(20),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    horizontalSpace(14),
                    Text("او", style: TextStyles.font15GreyColorWeight400),
                    horizontalSpace(14),
                    const Expanded(child: Divider()),
                  ],
                ),
                verticalSpace(40),
                ButtonWidget(
                    buttonText: "الدخول باستخدام FaceID",
                    borderRadius: 20.r,
                    backGroundColor: AppColors.grey2Color,
                    textStyle: TextStyles.font20RedColorWeight700,
                    onPressed: () {}),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row checkBoxRemindMe(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BlocBuilder<LoginCubit, LoginState>(
            buildWhen: (previous, current) {
              return current is OnChangeReminderBoxState;
            },
            builder: (context, state) {
              return CheckboxListTile(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  controlAffinity: ListTileControlAffinity.leading,
                  fillColor: MaterialStateProperty.all(
                      LoginCubit.get(context).reminderBox
                          ? AppColors.redColor
                          : AppColors.whiteColor),
                  side: BorderSide(
                      color: LoginCubit.get(context).reminderBox
                          ? AppColors.redColor
                          : AppColors.blackColor),
                  checkColor: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  value: LoginCubit.get(context).reminderBox,
                  title: Text(
                    "تذكرني",
                    style: TextStyles.font13DarkBlueColor33Weight400,
                  ),
                  onChanged: (value) {
                    LoginCubit.get(context).changeReminderBox(value!);
                  });
            },
          ),
        ),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.forgetPasswordScreen);
          },
          child: Text(
            "هل نسيت كلمة السر؟",
            style: TextStyles.font13DarkBlueColor33Weight400,
          ),
        ),
      ],
    );
  }
}
