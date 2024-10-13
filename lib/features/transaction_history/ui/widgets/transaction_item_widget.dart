import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/enums.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/transaction_history/domain/transaction_data.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionData item;

  const TransactionItemWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font13BlackColorWeight700),
            ),
            horizontalSpace(35),
            Text(item.id, style: TextStyles.font13BlackColorWeight700),
          ],
        ),
        verticalSpace(8),
        Text(item.date, style: TextStyles.font12BlackColorWeight300),
        verticalSpace(4),
        Row(
          children: [
            Container(
              height: 25.h,
              width: 80.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: item.status == TransactionStatus.inProgress
                      ? AppColors.greenColorF3
                      : item.status == TransactionStatus.success
                          ? AppColors.greenColorEE
                          : AppColors.greenColorEA,
                  borderRadius: BorderRadius.circular(6.r),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 12.5,
                        spreadRadius: 0,
                        color: AppColors.greyColor6B.withOpacity(.1)),
                  ]),
              child: Text("تحت التحقق",
                  style: TextStyles.font10BlackColorWeight400),
            ),
            Expanded(
              child: Text(item.price,
                  textAlign: TextAlign.end,
                  maxLines: 2,
                  style: TextStyles.font17BlackColorWeight400),
            )
          ],
        ),
        verticalSpace(10),
      ],
    );
  }
}
