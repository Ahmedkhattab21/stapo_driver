import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/styles.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackColor,
        body: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.greyColor70,
              surfaceTintColor: AppColors.greyColor70,
              shadowColor: AppColors.whiteColor,
              elevation: 0,
              pinned: true,
              title: Text(
                "بيفار جل العناية بالعيون للحيوانات الأليفة و القطط بيفار جل العناية بالعيون للحيوانات الأليفة و القطط بيفار جل العناية بالعيون للحيوانات الأليفة و القطط",
                maxLines: 2,
                style: TextStyles.font18WhiteColorWeight700,
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.whiteColor,
                  size: 18.r,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              expandedHeight: 200.h,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      ImageAsset.onBoardingImage,
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    ),
                    // Text(
                    //   " ldvmdvdmvlmdflmvldfldvmdvdmvlmdflmvldfldvmdvdmvlmdflmvldfldvmdvdmvlmdflmvldfldvmdvdmvlmdflmvldf",
                    //   style: TextStyles.font12WhiteColorWeight400,
                    // ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 23.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.r),
                          topLeft: Radius.circular(20.r)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 70.r,
                                width: 70.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14.r),
                                  child: Image.asset(
                                    ImageAsset.onBoardingImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              horizontalSpace(12),
                              Container(
                                height: 70.r,
                                width: 70.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14.r),
                                  child: Image.asset(
                                    ImageAsset.onBoardingImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              horizontalSpace(12),
                              Container(
                                height: 70.r,
                                width: 70.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14.r),
                                  child: Image.asset(
                                    ImageAsset.onBoardingImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              horizontalSpace(12),
                              Container(
                                height: 70.r,
                                width: 70.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14.r),
                                  child: Image.asset(
                                    ImageAsset.onBoardingImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              horizontalSpace(12),
                              Container(
                                height: 70.r,
                                width: 70.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14.r),
                                  child: Image.asset(
                                    ImageAsset.onBoardingImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              horizontalSpace(12),
                              Container(
                                height: 70.r,
                                width: 70.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14.r),
                                  child: Image.asset(
                                    ImageAsset.onBoardingImage,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        verticalSpace(15),
                        Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحرو التى يولدها التطبيق",
                            textAlign: TextAlign.start,
                            style: TextStyles.font13BlackColorEWeight300),
                        verticalSpace(15),
                        Divider(color: AppColors.greenColorAEA),
                        verticalSpace(15),
                        Row(
                          children: [
                            Text(
                              "كميـة الطلـب",
                              style: TextStyles.font14BlackColorWeight700,
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 4.h),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColorF5,
                                borderRadius: BorderRadius.circular(7.r),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(15, 15),
                                    blurRadius: 25,
                                    spreadRadius: 0,
                                    color: AppColors.purpleColorDC
                                        .withOpacity(.16),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Text("2 x",
                                      style: TextStyles
                                          .font13BlackColor2Weight400),
                                  horizontalSpace(3),
                                  Text("كرتـونة 12 حبه",
                                      style:
                                          TextStyles.font13BlackColorWeight700),
                                  horizontalSpace(5),
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(17),
                        Divider(color: AppColors.greenColorAEA),
                        verticalSpace(12),
                        verticalSpace(510),
                      ],
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ));
  }
}
