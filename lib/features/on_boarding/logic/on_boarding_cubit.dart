import 'package:flutter/material.dart';
import 'package:stapo_driver/core/services/cache_helper.dart';
import 'package:stapo_driver/core/utils/assets_manager.dart';
import 'package:stapo_driver/core/utils/constant_keys.dart';
import 'package:stapo_driver/features/on_boarding/domain/entity/on_boarding.dart';
import 'package:stapo_driver/features/on_boarding/logic/on_boarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(InitialState());

  List<OnBoarding> data = [
    OnBoarding(
      title: "المنصـة \n الرائـد لبيـع كل \n المنتجـات",
      subTitle: "فريد وبأفضـل الأسعـار",
      image: ImageAsset.stapoImage,
      backgroundImage: ImageAsset.onBoardingImage,
    ),
    OnBoarding(
      title: "المنصـة \n الرائـد لبيـع كل \n المنتجـات",
      subTitle: "فريد وبأفضـل الأسعـار",
      image: ImageAsset.stapoImage,
      backgroundImage: ImageAsset.onBoardingImage,
    ),
    OnBoarding(
      title: "المنصـة \n الرائـد لبيـع كل \n المنتجـات",
      subTitle: "فريد وبأفضـل الأسعـار",
      image: ImageAsset.stapoImage,
      backgroundImage: ImageAsset.onBoardingImage,
    ),
    OnBoarding(
      title: "المنصـة \n الرائـد لبيـع كل \n المنتجـات",
      subTitle: "فريد وبأفضـل الأسعـار",
      image: ImageAsset.stapoImage,
      backgroundImage: ImageAsset.onBoardingImage,
    ),
  ];
  PageController pageController = PageController(initialPage: 0);

  int currentPage = 0;

  void onPageChanged(int i) {
    currentPage = i;
    emit(OnPageChangedState());
  }

  Future<void> saveUserToken(String token) async {
    await CacheHelper.setSecuredString(ConstantKeys.saveTokenToShared, token);
  }

  static OnBoardingCubit get(context) => BlocProvider.of(context);
}
