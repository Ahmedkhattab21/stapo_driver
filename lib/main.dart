import 'package:stapo_driver/app.dart';
import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/services/cache_helper.dart';
import 'package:stapo_driver/core/services/services_locator.dart';
import 'package:stapo_driver/core/utils/app_constant.dart';
import 'package:stapo_driver/core/utils/app_strings.dart';
import 'package:stapo_driver/core/utils/constant_keys.dart';
import 'package:stapo_driver/core/utils/extentions.dart';
import 'package:stapo_driver/features/login/logic/login_observer.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/on_boarding/logic/on_boarding_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await EasyLocalization.ensureInitialized();
  await ServicesLocator.init();
  await CacheHelper.init();

  String navigationScreenRoute;
  await checkIfLoggedInUser();

  // String? token = await CacheHelper.getSecuredString(AppStrings.saveTokenToShared);
  // bool onBoardingWatch =
  //     await CacheHelper.getBool(AppStrings.saveIsOnBoardingToShared);
  // if (onBoardingWatch == true) {
  //   navigationScreenRoute = Routes.boardingScreen;
  // } else {
  // if (isLoggedInUser == true) {
  //   navigationScreenRoute = Routes.boardingScreen;
  // } else {
  navigationScreenRoute = Routes.onBoardingScreen;
  // }
  // }

  Bloc.observer = OnBoardingObserver();
  Bloc.observer = LoginObserver();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('ar', 'EG'),
      Locale('en', 'US'),
    ],
    saveLocale: true,
    startLocale: const Locale('ar', 'EG'),
    path: 'assets/languages',
    fallbackLocale: const Locale('ar', 'EG'),
    child: StapoDriverApp(navigateWidget: navigationScreenRoute),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await CacheHelper.getSecuredString(ConstantKeys.saveTokenToShared);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

//test
//test key42322332333