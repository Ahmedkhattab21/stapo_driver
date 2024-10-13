import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/my_orders/ui/widgets/order_item/order_item_widget.dart';

class OrdersTypesTabBar extends StatefulWidget {
  const OrdersTypesTabBar({super.key});

  @override
  State<OrdersTypesTabBar> createState() => _OrdersTypesTabBarState();
}

class _OrdersTypesTabBarState extends State<OrdersTypesTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          alignment: Alignment.center,
          child: TabBar(
            controller: _tabController,
            labelStyle: TextStyles.font14BlackColor2Weight400,
            unselectedLabelStyle: TextStyles.font14BlackColor2Weight300,
            labelColor: AppColors.blackColor,
            unselectedLabelColor: AppColors.blackColor,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: AppColors.whiteColorFo,
            indicatorColor: AppColors.yellowColor,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "طلبـات جاريـة",
                      style: _tabController?.index == 0
                          ? TextStyles.font14BlackColor2Weight400
                          : TextStyles.font14BlackColor2Weight300,
                    ),
                    horizontalSpace(14),
                    Container(
                      height: 23.r,
                      width: 23.r,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _tabController?.index == 0
                            ? AppColors.yellowColor
                            : AppColors.greyColorF5,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text(
                        "4",
                        style: _tabController?.index == 0
                            ? TextStyles.font12WhiteColorWeight400
                            : TextStyles.font12GreyColor49Weight400,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "طلبـات منتهيـة",
                      style: _tabController?.index == 0
                          ? TextStyles.font14BlackColor2Weight400
                          : TextStyles.font14BlackColor2Weight300,
                    ),
                    horizontalSpace(14),
                    Container(
                      height: 23.r,
                      width: 23.r,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _tabController?.index == 1
                            ? AppColors.yellowColor
                            : AppColors.greyColorF5,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text(
                        "4",
                        style: _tabController?.index == 1
                            ? TextStyles.font12WhiteColorWeight400
                            : TextStyles.font12GreyColor49Weight400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            onTap: (int? value) {
              setState(() {});
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _currentOrders(),
              _finishedOrders(),
            ],
          ),
        ),
      ],
    );
  }

  Column _currentOrders() {
    return Column(
      children: [
        verticalSpace(40),
        OrderItemWidget(),
      ],
    );
  }

  Column _finishedOrders() {
    return Column(
      children: [
        Text("_finishedOrders"),
      ],
    );
  }
}
