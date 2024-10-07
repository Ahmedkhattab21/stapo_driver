import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:flutter/material.dart';
import 'package:stapo_driver/features/on_boarding/logic/on_boarding_cubit.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: pageView(context),
    );
  }

  PageView pageView(BuildContext context) {
    return PageView.builder(
      controller: OnBoardingCubit.get(context).pageController,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      onPageChanged: (i) => OnBoardingCubit.get(context).onPageChanged(i),
      itemCount: OnBoardingCubit.get(context).data.length,
      itemBuilder: (context, index) => OnBoardingBody(
        boarding: OnBoardingCubit.get(context).data[index],
      ),
    );
  }
}
