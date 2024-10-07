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

class ForgetPasswordScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  ForgetPasswordScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(20),
                Image.asset(
                  ImageAsset.stapoImage,
                  color: AppColors.blackColor,
                ),
                verticalSpace(20),
                Center(
                  child: Text("سنقوم بارسال رمز تحقق للتأكيد",
                      textAlign: TextAlign.center,
                      style: TextStyles.font18BlackColorEWeight600),
                ),
                verticalSpace(40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: AppTextFormField(
                    hintText: "البريد الإلكتروني أو الهاتف",
                    hintStyle: TextStyles.font15BlackColorFWeight400,
                    style: TextStyles.font15BlackColorWeight400,
                    backgroundColor: AppColors.whiteColor,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(ImageAsset.emailIcon),
                    ),
                    validator: (String? value) {},
                    onchange: (String? value) {},
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whiteColorE5)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whiteColorE5)),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                verticalSpace(90),
                ButtonWidget(
                    buttonText: "التالي",
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
                      context.pushNamed(Routes.verifyCodeScreen,
                          arguments: {"isRegister": false, "userId": 1});
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
