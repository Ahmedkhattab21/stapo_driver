// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:magic/core/utils/app_colors_white_theme.dart';
// import 'package:magic/core/utils/styles.dart';
//
//
//
// class SearchWidget extends StatelessWidget {
//   final EdgeInsetsGeometry? contentPadding;
//   final InputBorder? focusedBorder;
//   final InputBorder? enabledBorder;
//   final TextStyle? inputTextStyle;
//   final TextStyle? hintStyle;
//   final String hintText;
//   final bool? isObscureText;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final Color? backgroundColor;
//   final bool isPhoneNumber;
//   final bool? isRegister;
//   final bool? isLogin;
//   final bool? autofocus;
//
//   final TextEditingController? controller;
//   final Function(String?) validator;
//   final Function(String) onchange;
//   final TextInputType keyboardType;
//
//   const SearchWidget({
//     super.key,
//     this.contentPadding,
//     this.focusedBorder,
//     this.enabledBorder,
//     this.inputTextStyle,
//     this.hintStyle,
//     required this.hintText,
//     this.isObscureText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.backgroundColor,
//     this.controller,
//     required this.validator,
//     required this.onchange,
//     required this.keyboardType,
//     this.isPhoneNumber = false,
//     this.isRegister = false,
//     this.isLogin = false,
//     this.autofocus = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       autofocus: autofocus!,
//       controller: controller,
//       cursorColor: AppColors.blackColor,
//       keyboardType: keyboardType,
//       onChanged: (String value) {
//         onchange(value);
//       },
//       decoration: InputDecoration(
//         isDense: true,
//         contentPadding: contentPadding ??
//             EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
//         focusedBorder: focusedBorder ??
//             OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: AppColors.greyColorB4.withOpacity(.11),
//               ),
//               borderRadius: BorderRadius.circular(9.r),
//             ),
//         enabledBorder: enabledBorder ??
//             OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: AppColors.greyColorB4.withOpacity(.11),
//               ),
//                   borderRadius: BorderRadius.circular(9.r),
//             ),
//         hintStyle: hintStyle ?? TextStyles.font14GreyColor40Weight400,
//         hintText: hintText,
//         prefixIcon: prefixIcon,
//         suffixIcon: suffixIcon,
//         fillColor: backgroundColor ?? AppColors.whiteColor,
//         filled: true,
//       ),
//       obscureText: isObscureText ?? false,
//       style: TextStyles.font14BlackColor13Weight400,
//       validator: (value) {
//         return validator(value);
//       },
//     );
//   }
// }
