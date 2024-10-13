import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/saved_addresses/ui/widgets/address_item_widget.dart';

class SavedAddressesScreen extends StatelessWidget {
  List<String> address = [
    "مبنى رقم 456، شارع الملك فهد مدينـة الرياض المملكة العربية السعودية",
    "مبنى رقم 456، شارع الملك فهد مدينـة الرياض المملكة العربية السعودية",
    "مبنى رقم 456، شارع الملك فهد مدينـة الرياض المملكة العربية السعودية",
    "مبنى رقم 456، شارع الملك فهد مدينـة الرياض المملكة العربية السعودية",
    "مبنى رقم 456، شارع الملك فهد مدينـة الرياض المملكة العربية السعودية",
    "مبنى رقم 456، شارع الملك فهد مدينـة الرياض المملكة العربية السعودية",
  ];

  SavedAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text("العناوين المسجلـة",
            style: TextStyles.font16BlackColorEWeight400),
        actions: [
          GestureDetector(
              onTap: () {
                context.pushNamed(Routes.addNewAddressScreen);
              },
              child: Container(
                height: 36.r,
                width: 36.r,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(11.r),
                  border: Border.all(color: AppColors.greyColorE1),
                ),
                child: Icon(
                  Icons.add,
                  color: AppColors.blackColor,
                ),
              )),
          horizontalSpace(20),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 30.h),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            separatorBuilder: (context, index) {
              return verticalSpace(15);
            },
            itemBuilder: (context, index) {
              return AddressItemWidget(
                addressController: TextEditingController(text: address[index]),
              );
            }),
      ),
    );
  }
}
