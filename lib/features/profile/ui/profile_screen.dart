import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/services/services_locator.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/features/edit_profile/logic/edit_profile_cubit.dart';
import 'package:stapo_driver/features/edit_profile/ui/edit_profile_screen.dart';
import 'package:stapo_driver/features/login/ui/login_screen.dart';
import 'package:stapo_driver/features/profile/ui/widgets/person_data_Widget.dart';
import 'package:stapo_driver/features/profile/ui/widgets/profile_item_widget.dart';
import 'package:stapo_driver/features/saved_addresses/ui/saved_addresses_screen.dart';
import 'package:stapo_driver/features/transaction_history/ui/transaction_history_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(80),
              PersonDataWidget(),
              verticalSpace(40),
              ProfileItemWidget(
                title: "البيانـات الشخصيـة",
                image: ImageAsset.personDataIcon,
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                    context,
                    settings: RouteSettings(name: Routes.editProfileScreen),
                    screen: BlocProvider(
                      create: (context) => EditProfileCubit(),
                      child: EditProfileScreen(),
                    ),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
              ProfileItemWidget(
                title: "المعاملات",
                image: ImageAsset.transactionIcon,
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                    context,
                    settings:
                        RouteSettings(name: Routes.transactionHistoryScreen),
                    screen: TransactionHistoryScreen(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
              ProfileItemWidget(
                title: "العناوين المسجلـة",
                image: ImageAsset.locationsIcon,
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                    context,
                    settings: RouteSettings(name: Routes.savedAddressesScreen),
                    screen: SavedAddressesScreen(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
              ProfileItemWidget(
                title: "الدعم و المسانـدة",
                image: ImageAsset.helpIcon,
                onTap: () {
                  print(1);
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
              ProfileItemWidget(
                title: "الإبلاغ عن عطل",
                image: ImageAsset.reportIcon,
                onTap: () {
                  print(1);
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
              ProfileItemWidget(
                title: "الشروط و الاحكام",
                image: ImageAsset.conditionsIcon,
                onTap: () {
                  print(1);
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
              ProfileItemWidget(
                title: "اللغة",
                image: ImageAsset.languageIcon,
                onTap: () {
                  print(1);
                },
              ),
              verticalSpace(10),
              Divider(color: AppColors.greyColorE8),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
