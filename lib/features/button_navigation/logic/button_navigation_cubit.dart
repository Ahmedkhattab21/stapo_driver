import 'package:stapo_driver/core/services/cache_helper.dart';
import 'package:stapo_driver/core/utils/constant_keys.dart';
import 'package:stapo_driver/features/button_navigation/logic/button_navigation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonNavigationCubit extends Cubit<ButtonNavigationState> {
  // final ForgetPasswordRepo _forgetPasswordRepo;
  // final LoginRepo _loginRepo;

  ButtonNavigationCubit()
      : super(InitialState());


  Future<void> saveUserToken(String token) async {
    await CacheHelper.setSecuredString(ConstantKeys.saveTokenToShared, token);
  }

  static ButtonNavigationCubit get(context) => BlocProvider.of(context);
}
