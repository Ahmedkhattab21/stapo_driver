import 'package:stapo_driver/config/routes/app_routes.dart';
import 'package:stapo_driver/config/themes/app_white_theme.dart';
import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/app_constant.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StapoDriverApp extends StatelessWidget {
  final String navigateWidget;

  const StapoDriverApp({required this.navigateWidget, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, snapshot) {
          language = context.locale.languageCode;
          return Container(
            color: AppColors.whiteColor,
            child: MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              title: "cars fix",
              theme: themeData(),
              // darkTheme: ,
              // home: navigateWidget,
              initialRoute: navigateWidget,
              //     isLoggedInUser ? Routes.homeAppScreen : Routes.loginScreen,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
        });
  }
}
