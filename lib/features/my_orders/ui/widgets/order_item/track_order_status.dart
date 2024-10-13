import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class TrackOrderStatus extends StatelessWidget {
  const TrackOrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.greenColorE6,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        children: [
          Container(
            height: 40.r,
            width: 40.r,
            decoration: BoxDecoration(
              color: AppColors.greenColorD8,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          horizontalSpace(14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "تم التوصيل",
                style: TextStyles.font14BlackColor2Weight400,
              ),
              Text(
                "لقد تم توصيل الطلب اليك بنجاح",
                style: TextStyles.font12BlackColor2Weight300,
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 50.w,
            child: Text(
              "اليوم 03:40 am",
              maxLines: 2,
              textAlign: TextAlign.end,
              style: TextStyles.font12BlackColor2Weight400,
            ),
          )
        ],
      ),
    );
  }
}
