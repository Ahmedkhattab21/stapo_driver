import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/app_constant.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:stapo_driver/features/forget_password/logic/forget_password_cubit.dart';
import 'package:stapo_driver/features/forget_password/logic/forget_password_state.dart';
import 'package:stapo_driver/features/verify_code/ui/verify_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController phoneController;

  const ScreenButton(
      {required this.formKey, required this.phoneController, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      buildWhen: (previous, current) {
        return current is OnSendCodeCatchErrorState ||
            current is OnSendCodeSuccessState ||
            current is OnSendCodeErrorState ||
            current is OnSendCodeLoadingState ||
            current is OnGetUserDataCatchErrorState ||
            current is OnGetUserDataErrorState ||
            current is OnGetUserDataLoadingState;
      },
      listener: (context, state) {
        if (state is OnSendCodeSuccessState) {
          context.pushNamed(
            Routes.verifyCodeScreen,
            arguments: {"userId": state.userID, "isRegister": false},
          );
        } else if (state is OnGetUserDataErrorState ||
            state is OnGetUserDataCatchErrorState ||
            state is OnSendCodeErrorState ||
            state is OnSendCodeCatchErrorState) {
          AppConstant.toast("حدث خطآ حاول مره اخري", AppColors.redColor);
        }
      },
      builder: (context, state) {
        return (state is OnSendCodeLoadingState ||
                state is OnGetUserDataLoadingState)
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.redColor,
                ),
              )
            : ButtonWidget(
                buttonText: "التالي",
                borderRadius: 20.r,
                backGroundColor: AppColors.redColor,
                textStyle: TextStyles.font20WhiteColorWeight700,
                onPressed: () {
                  validatePhoneNumber(context);
                });
      },
    );
  }

  void validatePhoneNumber(BuildContext context) {
    if (formKey.currentState!.validate()) {
      ForgetPasswordCubit.get(context).getUserData(phoneController.text);
    }
  }
}
