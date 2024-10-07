import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                Center(child: Image.asset(ImageAsset.logoImage)),
                verticalSpace(80),
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
                verticalSpace(40),
                ButtonWidget(
                    buttonText: "تغيير كلمة المرور",
                    borderRadius: 20.r,
                    backGroundColor: AppColors.redColor,
                    textStyle: TextStyles.font20WhiteColorWeight700,
                    onPressed: () {}),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
