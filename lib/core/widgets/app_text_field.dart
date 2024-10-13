import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final int? maxLines;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final bool isPhoneNumber;
  final bool? isRegister;
  final bool? isLogin;
  final bool? autofocus;

  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String) onchange;
  final TextInputType keyboardType;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.maxLines,
    this.hintStyle,
    this.style,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    required this.onchange,
    required this.keyboardType,
    this.isPhoneNumber = false,
    this.isRegister = false,
    this.isLogin = false,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus!,
      controller: controller,
      cursorColor: AppColors.blackColor,
      maxLines: maxLines,
      enableSuggestions: true,
      autocorrect: true,
      autofillHints: const [AutofillHints.email],
      keyboardType: keyboardType,
      onChanged: (String value) {
        onchange(value);
      },
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.greyColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(20.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.greyColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(20.r),
            ),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColorE5)),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColorE5)),
        hintStyle: hintStyle ?? TextStyles.font15BlackColorFWeight400,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.whiteColor,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: style ?? TextStyles.font15BlackColorWeight400,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
