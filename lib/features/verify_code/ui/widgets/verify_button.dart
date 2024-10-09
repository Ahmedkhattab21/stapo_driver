import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/app_constant.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:stapo_driver/features/verify_code/logic/verify_code_cubit.dart';
import 'package:stapo_driver/features/verify_code/logic/verify_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyButton extends StatelessWidget {
  final bool isRegister;
  final int userId;
  final TextEditingController codeController;

  const VerifyButton(
      {required this.isRegister,
      required this.userId,
      required this.codeController,
      super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyCodeCubit, VerifyCodeState>(
      buildWhen: (previous, current) {
        return current is OnVerifyCodeLoadingState ||
            current is OnVerifyCodeSuccessState ||
            current is OnVerifyCodeCatchErrorState ||
            current is OnVerifyCodeErrorState;
      },
      listener: (context, state) {
        if (state is OnVerifyCodeSuccessState) {
          context.pushNamed(Routes.resetPasswordScreen);
        } else if (state is OnVerifyCodeErrorState ||
            state is OnVerifyCodeCatchErrorState) {
          AppConstant.toast("ادخل كود صحيح", AppColors.redColor);
        }
      },
      builder: (context, state) {
        return (state is OnVerifyCodeLoadingState)
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.redColor,
                ),
              )
            : ButtonWidget(
                buttonText: "Verify OTP",
                buttonHeight: 50,
                buttonWidth: 145,
                borderRadius: 12,
                backGroundColor: AppColors.yellowColor,
                borderColor: Colors.transparent,
                textStyle: TextStyles.font14BlackColorWeight500,
                boxShadow: BoxShadow(
                    offset: Offset(15, 15),
                    spreadRadius: 0,
                    blurRadius: 25,
                    color: AppColors.purpleColorDC.withOpacity(.16)),
                onPressed: () {
                  print("object");
                  print(isRegister);
                  if (isRegister) {
                    context.pushNamed(Routes.signUpSuccessScreen);
                  } else {

                    // context.pushNamed(Routes.resetPasswordScreen);
                  }

                  //    VerifyCodeCubit.get(context)
                  //                       .verifyCode(userId, codeController.text);
                });
      },
    );
  }
}
