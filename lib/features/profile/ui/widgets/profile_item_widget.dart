import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class ProfileItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final Function onTap;

  const ProfileItemWidget(
      {required this.title,
      required this.image,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Row(
        children: [
          SvgPicture.asset(image),
          horizontalSpace(15),
          Text(title, style: TextStyles.font14BlackColor1Weight400),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.blackColor,
            size: 18.r,
          )
        ],
      ),
    );
  }
}
