import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/order_item/order_rates_widget.dart';

class ItemData extends StatelessWidget {
  const ItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60.r,
          width: 60.r,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              ImageAsset.onBoardingImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        horizontalSpace(14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "بيفار جل العناية بالعيون للحيوانات الأليفة و القطط",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font16BlackColorEWeight400,
              ),
              OrderRatesWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
