import 'package:stapo_driver/core/services/cache_helper.dart';
import 'package:stapo_driver/core/utils/constant_keys.dart';
import 'package:stapo_driver/features/verify_code/data/models/verify_code/verify_code_request.dart';
import 'package:stapo_driver/features/verify_code/data/repos/verify_code_repo.dart';
import 'package:stapo_driver/features/verify_code/logic/verify_code_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyCodeCubit extends Cubit<VerifyCodeState> {
  final VerifyCodeRepo _verifyCodeRepo;

  VerifyCodeCubit(this._verifyCodeRepo) : super(InitialState());

  verifyCode(int userId, String code) {
    // emit(OnVerifyCodeLoadingState());
    // _verifyCodeRepo
    //     .verifyCode(VerifyCodeRequest(userId: userId, code: code))
    //     .then((value) {
    //   value.fold((l) {
    //     emit(OnVerifyCodeErrorState());
    //   }, (r) {
    //     print("verifyCode");
    //     print(r.token);
    //     emit(OnVerifyCodeSuccessState());
    //   });
    // }).catchError((error) {
    //   emit(OnVerifyCodeCatchErrorState());
    // });
  }

  // Future<void> saveUserToken(String token) async {
  //   await CacheHelper.setSecuredString(ConstantKeys.saveTokenToShared, token);
  // }

  static VerifyCodeCubit get(context) => BlocProvider.of(context);
}
