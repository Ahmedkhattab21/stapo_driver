import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/services/services_locator.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:stapo_driver/features/forget_password/logic/forget_password_cubit.dart';
import 'package:stapo_driver/features/verify_code/logic/verify_code_cubit.dart';
import 'package:stapo_driver/features/verify_code/ui/widgets/code_text_field.dart';
import 'package:stapo_driver/features/verify_code/ui/widgets/resend_code.dart';
import 'package:stapo_driver/features/verify_code/ui/widgets/verify_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_flags/country_flags.dart';

class VerifyCodeScreen extends StatelessWidget {
  final bool isRegister;
  final int userId;
  final TextEditingController codeController = TextEditingController();

  VerifyCodeScreen({this.isRegister = true, required this.userId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ForgetPasswordCubit(getIt(), getIt()),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            title:
                Text("Verify OTP", style: TextStyles.font14BlackColorWeight400),
            elevation: 0,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(70),
                  Text(
                    "Enter the \n code received on \n your mobile no.",
                    textAlign: TextAlign.center,
                    style: TextStyles.font25BlackColorEWeight600,
                  ),
                  verticalSpace(20),

                  Container(
                    width: 200.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColorF5,
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+971 52 812 1947",
                          textAlign: TextAlign.center,
                          style: TextStyles.font15WhiteColorFWeight400,
                        ),
                        horizontalSpace(10),
                        CountryFlag.fromCountryCode(
                          'ES',
                          shape: const Circle(),
                          height: 20.r,
                          width: 20.r,
                        ),
                      ],
                    ),
                  ),

                  verticalSpace(50),


                  ///
                  ///
                  Center(
                      child: CodesTextFields(
                    codeController: codeController,
                    userId: userId,
                  )),
                  verticalSpace(50),
                  VerifyButton(userId: userId, codeController: codeController),

                  verticalSpace(40),
                  Center(
                    child: Text("لم يصلك رمز تحقق؟",
                        style: TextStyles.font15DarkBlueColor33Weight400),
                  ),
                  verticalSpace(20),
                  ResendCode(
                    resendCode: () {
                      if (isRegister) {
                      } else {
                        // ForgetPasswordCubit.get(context).sendCode(userId);
                      }
                    },
                  ),
                  verticalSpace(10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
