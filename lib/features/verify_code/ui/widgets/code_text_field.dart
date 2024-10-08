import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/verify_code/logic/verify_code_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class CodesTextFields extends StatelessWidget {
  final int userId;
  final TextEditingController codeController;

  const CodesTextFields({
    required this.userId,
    required this.codeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
        length: 5,
        keyboardType: TextInputType.number,
        enableSuggestions: true,
        controller: codeController,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinputAutovalidateMode: PinputAutovalidateMode.disabled,
        defaultPinTheme: PinTheme(
          width: 55.r,
          height: 77.r,
          textStyle: TextStyles.font18GreyColorA2Weight500,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.greyColorE1, width: 2.5),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 55.r,
          height: 77.r,
          textStyle: TextStyles.font18GreyColorA2Weight500,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.greyColorE1, width: 2.5),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        submittedPinTheme: PinTheme(
          width: 55.r,
          height: 77.r,
          textStyle: TextStyles.font18GreyColorA2Weight500,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.greyColorE1, width: 2.5),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        showCursor: true,
        onCompleted: (String? value) {
          VerifyCodeCubit.get(context).verifyCode(userId, codeController.text);
        });
  }
}
