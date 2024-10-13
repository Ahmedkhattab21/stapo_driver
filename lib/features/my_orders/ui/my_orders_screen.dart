import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/orders_types_tab_bar.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(70),
              Text("الطلبـات",style: TextStyles.font16BlackColorEWeight400),
              verticalSpace(30),
              Expanded(child: OrdersTypesTabBar()),

            ],
          ),
        ),
      ),
    );
  }
}
