import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/button_widget.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/edit_address_field_widget.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/edit_email_field_widget.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/edit_name_field_widget.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/edit_phone_field_widget.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/edit_profile_button_widget.dart';
import 'package:stapo_driver/features/edit_profile/ui/widgets/person_images_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text("البيانـات الشخصيـة",
            style: TextStyles.font16BlackColorEWeight400),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonImagesWidget(),
            verticalSpace(30),
            Text("الاسم بالكامـل", style: TextStyles.font13BlackColorWeight400),
            verticalSpace(14),
            EditNameFieldWidget(),
            verticalSpace(14),
            Text("رقم الجوال", style: TextStyles.font13BlackColorWeight400),
            verticalSpace(14),
            EditPhoneFieldWidget(),
            verticalSpace(14),
            Text("البريد الالكترونى",
                style: TextStyles.font13BlackColorWeight400),
            verticalSpace(14),
            EditEmailFieldWidget(),
            verticalSpace(14),
            Text("العنوان", style: TextStyles.font13BlackColorWeight400),
            verticalSpace(14),
            EditAddressFieldWidget(),
            verticalSpace(40),
            EditProfileButtonWidget(),
            verticalSpace(50),
          ],
        ),
      )),
    );
  }
}
