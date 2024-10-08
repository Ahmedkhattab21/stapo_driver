import 'package:flutter_svg/flutter_svg.dart';
import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
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
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: Text("Change password",
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
                Image.asset(
                  ImageAsset.stapoImage,
                  color: AppColors.blackColor,
                ),
                verticalSpace(60),
                Text("Khalid Saied",
                    style: TextStyles.font15GreyColor82Weight400),
                verticalSpace(10),
                Container(
                  height: 90.r,
                  width: 90.r,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      ImageAsset.onBoardingImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                verticalSpace(40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: AppTextFormField(
                    hintText: "********",
                    hintStyle: TextStyles.font15BlackColorFWeight400,
                    style: TextStyles.font15BlackColorWeight400,
                    backgroundColor: AppColors.whiteColor,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(ImageAsset.passwordIcon),
                    ),
                    validator: (String? value) {},
                    onchange: (String? value) {},
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whiteColorE5)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whiteColorE5)),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                verticalSpace(70),
                ButtonWidget(
                    buttonText: "Change password",
                    buttonHeight: 50,
                    buttonWidth: 170,
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
                      context.pop();
                      context.pop();
                      context.pop();
                    }),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
