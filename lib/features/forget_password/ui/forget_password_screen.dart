import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/forget_password/domain/entity/selected_country.dart';
import 'package:stapo_driver/features/forget_password/ui/widgets/phone_text_field.dart';
import 'package:stapo_driver/features/forget_password/ui/widgets/screen_button.dart';
import 'package:stapo_driver/features/forget_password/ui/widgets/select_nationality_forget_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//559188535
class ForgetPasswordScreen extends StatelessWidget {
  final SelectedCountry _selectedCountry = SelectedCountry();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Center(child: Image.asset(ImageAsset.logoImage)),
                  verticalSpace(40),
                  Center(
                    child: Text("هيا بنا نبدأ",
                        style: TextStyles.font26RedColorWeight700),
                  ),
                  verticalSpace(20),
                  Center(
                    child: Text("سنقوم بارسال رمز تحقق للتأكيد",
                        textAlign: TextAlign.center,
                        style: TextStyles.font18DarkBlueColor33Weight400),
                  ),
                  verticalSpace(20),
                  SelectNationalityForgetPassword(
                    selectedCountry: _selectedCountry,
                  ),
                  verticalSpace(30),
                  PhoneTextField(
                    selectedCountry: _selectedCountry,
                    phoneController: phoneController,
                  ),
                  verticalSpace(30),
                  Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                "النقر علي اشترك الان يعني أنك قرأت ووافقت علي",
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
                  verticalSpace(40),
                  ScreenButton(
                    formKey: formKey,
                    phoneController: phoneController,
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
