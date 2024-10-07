import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/on_boarding/domain/entity/on_boarding.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/boarding_buttons_widget.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/boarding_skip_widget.dart';
import 'package:stapo_driver/features/on_boarding/ui/widgets/dots_widget.dart';

class OnBoardingBody extends StatelessWidget {
  final OnBoarding boarding;

  const OnBoardingBody({required this.boarding, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQueryValues(context).height,
      width: MediaQueryValues(context).width,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(boarding.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(40),
          BoardingSkipWidget(boarding: boarding),
          verticalSpace(40),
          Text(
            boarding.subTitle,
            style: TextStyles.font16WhiteColorEWeight400,
          ),
          verticalSpace(2),
          Text(
            boarding.title,
            style: TextStyles.font40WhiteColorEWeight700,
          ),
          verticalSpace(30),
          DotsWidget(),
          const Spacer(),
          BoardingButtonsWidget(),
        ],
      ),
    );
  }
}
