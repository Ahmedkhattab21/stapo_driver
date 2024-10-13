import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/core/widgets/app_text_field.dart';

class AddressItemWidget extends StatefulWidget {
  final TextEditingController addressController;

  const AddressItemWidget({required this.addressController, super.key});

  @override
  State<AddressItemWidget> createState() => _AddressItemWidgetState();
}

class _AddressItemWidgetState extends State<AddressItemWidget> {
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    if (isEdit) {
      return AppTextFormField(
        hintText: "",
        controller: widget.addressController,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyColorE1,
          ),
          borderRadius: BorderRadius.circular(14.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyColorE1,
          ),
          borderRadius: BorderRadius.circular(14.r),
        ),
        validator: (String? value) {},
        onchange: (String? value) {},
        suffixIcon: GestureDetector(
          onTap: () {
            isEdit = !isEdit;
            setState(() {});
          },
          child: Container(
            height: 40.r,
            width: 40.r,
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: AppColors.greenColorD8,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.done,
              color: AppColors.blackColor,
              size: 18.r,
            ),
          ),
        ),
        keyboardType: TextInputType.text,
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.greenColorED,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.addressController.text,
                style: TextStyles.font14BlackColor2Weight400,
              ),
            ),
            horizontalSpace(30),
            GestureDetector(
              onTap: () {
                isEdit = !isEdit;
                setState(() {});
              },
              child: Container(
                height: 40.r,
                width: 40.r,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.edit,
                  color: AppColors.blackColor,
                  size: 18.r,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
