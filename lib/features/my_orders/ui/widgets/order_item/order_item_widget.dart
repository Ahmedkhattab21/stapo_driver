import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/order_item/item_data.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/order_item/order_price_widget.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/order_item/order_rates_widget.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/order_item/track_order_status.dart';
import 'package:stapo_driver/features/order_details/logic/order_details_cubit.dart';
import 'package:stapo_driver/features/order_details/ui/order_details_screen.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
          context,
          settings: RouteSettings(name: Routes.orderDetailsScreen),
          screen: BlocProvider(
            create: (context) => OrderDetailsCubit(),
            child: OrderDetailsScreen(),
          ),
          withNavBar: false,
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19.r),
            border: Border.all(
              color: AppColors.greyColorE1,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemData(),
            verticalSpace(6),
            OrderPriceWidget(),
            verticalSpace(10),
            TrackOrderStatus(),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined,
                    color: AppColors.blackColor, size: 20.r),
                horizontalSpace(10),
                Text("عنوان التوصيـل",
                    style: TextStyles.font14BlackColorWeight700),
              ],
            ),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                "مبنى رقم 456، شارع الملك فهد، حي العليا مدينـة الرياض المملكة العربية السعودية",
                textAlign: TextAlign.start,
                style: TextStyles.font13BlackColorEWeight300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
