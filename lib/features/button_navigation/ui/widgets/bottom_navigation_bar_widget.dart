import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/my_orders/ui/my_orders_screen.dart';
import 'package:stapo_driver/features/profile/ui/profile_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        Center(child: Text("data1")),
        Center(child: Text("data2")),
        MyOrdersScreen(),
        Center(child: Text("data4")),
        ProfileScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            ImageAsset.discoverIcon,
            height: 20.r,
            width: 20.r,
            color: _controller.index == 0
                ? AppColors.blackColor
                : AppColors.greyColorA8,
          ),
          title: "استكشـف",
          activeColorPrimary: AppColors.yellowColor,
          activeColorSecondary: AppColors.blackColor,
          inactiveColorPrimary: AppColors.greyColorA8,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            ImageAsset.favoriteIcon,
            height: 20.r,
            width: 20.r,
            color: _controller.index == 1
                ? AppColors.blackColor
                : AppColors.greyColorA8,
          ),
          iconSize: 50.r,
          title: "المفضلـة",
          activeColorPrimary: AppColors.yellowColor,
          activeColorSecondary: AppColors.blackColor,
          inactiveColorPrimary: AppColors.greyColorA8,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            ImageAsset.ordersIcon,
            height: 20.r,
            width: 20.r,
            color: _controller.index == 2
                ? AppColors.blackColor
                : AppColors.greyColorA8,
          ),
          iconSize: 50.r,
          title: "الطلبـات",
          activeColorPrimary: AppColors.yellowColor,
          activeColorSecondary: AppColors.blackColor,
          inactiveColorPrimary: AppColors.greyColorA8,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            ImageAsset.cartIcon,
            height: 20.r,
            width: 20.r,
            color: _controller.index == 3
                ? AppColors.blackColor
                : AppColors.greyColorA8,
          ),
          iconSize: 50.r,
          title: "السلـة",
          activeColorPrimary: AppColors.yellowColor,
          activeColorSecondary: AppColors.blackColor,
          inactiveColorPrimary: AppColors.greyColorA8,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            ImageAsset.personIcon,
            height: 20.r,
            width: 20.r,
            color: _controller.index == 4
                ? AppColors.blackColor
                : AppColors.greyColorA8,
          ),
          iconSize: 50.r,
          title: "البروفايل",
          activeColorPrimary: AppColors.yellowColor,
          activeColorSecondary: AppColors.blackColor,
          inactiveColorPrimary: AppColors.greyColorA8,
        ),
      ],
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      backgroundColor: AppColors.whiteColor,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: false,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: 65,
      navBarStyle: NavBarStyle.style3,
      onItemSelected: (int value) {
        setState(() {});
      },
    );
  }
}
