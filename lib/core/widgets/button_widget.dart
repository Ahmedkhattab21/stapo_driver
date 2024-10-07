import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';

class ButtonWidget extends StatelessWidget {
  final double? borderRadius;
  final Color? borderColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backGroundColor;
  final BoxShadow? boxShadow;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const ButtonWidget({
    super.key,
    this.borderRadius,
    this.borderColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.backGroundColor,
    this.boxShadow,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: buttonHeight ?? 50.h,
        width: buttonWidth?.w,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 6.h,
        ),
        decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 20.0),
            border: Border.all(color: borderColor ?? AppColors.whiteColor),
            boxShadow: boxShadow == null
                ? null
                : [
                    boxShadow!,
                  ]),
        child: Text(
          buttonText,
          style: textStyle,
        ),
      ),
    );
  }
}
