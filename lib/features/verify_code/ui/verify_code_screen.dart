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
            elevation: 0,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Center(
                    child: Text("التحقق من OTP",
                        style: TextStyles.font25RedColorWeight700),
                  ),
                  verticalSpace(20),
                  Center(
                    child: Text("رجاء ادخل رمز التحقق ",
                        style: TextStyles.font17DarkBlueColor33Weight400),
                  ),
                  verticalSpace(70),
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
                        ForgetPasswordCubit.get(context).sendCode(userId);
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
