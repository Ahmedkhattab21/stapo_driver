import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/button_navigation/ui/widgets/bottom_navigation_bar_widget.dart';

class ButtonNavigationScreen extends StatelessWidget {
  const ButtonNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}
