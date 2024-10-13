import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/add_new_address/ui/widgets/add_address_button_widget.dart';
import 'package:stapo_driver/features/add_new_address/ui/widgets/add_address_item_widget.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title:
            Text("عنـوان جديـد", style: TextStyles.font16BlackColorEWeight400),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 20.h),
        child: Column(
          children: [
            AddAddressItemWidget(),
            const Spacer(),
            AddAddressButtonWidget(),
          ],
        ),
      )),
    );
  }
}
