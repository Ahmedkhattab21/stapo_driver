// import 'package:stapo_driver/core/utils/app_regex.dart';
// import 'package:stapo_driver/core/utils/styles.dart';
// import 'package:stapo_driver/core/widgets/app_text_field.dart';
// import 'package:stapo_driver/features/forget_password/domain/entity/selected_country.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class PhoneTextField extends StatelessWidget {
//   final TextEditingController phoneController;
//   final SelectedCountry selectedCountry;
//
//   const PhoneTextField(
//       {required this.selectedCountry,
//       required this.phoneController,
//       super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AppTextFormField(
//       hintText: "5XXXXXXXX",
//       hintStyle: TextStyles.font16GreyColorWeight400,
//       controller: phoneController,
//       suffixIcon: Padding(
//         padding: EdgeInsets.all(12.r),
//         child: Text(
//           selectedCountry.selectedCountry?.id.toString() ?? "",
//           style: TextStyles.font15RedColorWeight700,
//         ),
//       ),
//       validator: (String? value) {
//         if (value == null ||
//             value.isEmpty ||
//             AppRegex.isSaudiPhoneNumberValid(value)) {
//           return 'ادخل رقم هاتف صحيح ';
//         }
//         return null;
//       },
//       onchange: (String? value) {},
//       keyboardType: TextInputType.phone,
//     );
//   }
// }
