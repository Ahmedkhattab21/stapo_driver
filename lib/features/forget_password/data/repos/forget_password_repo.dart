import 'package:stapo_driver/core/exceptions/exceptions.dart';
import 'package:stapo_driver/core/exceptions/failure.dart';
import 'package:stapo_driver/features/forget_password/data/models/get_user_data/user_data_request.dart';
import 'package:stapo_driver/features/forget_password/data/models/get_user_data/user_data_response.dart';
import 'package:stapo_driver/features/forget_password/data/models/send_code/send_code_request.dart';
import 'package:stapo_driver/features/forget_password/data/models/send_code/send_code_response.dart';
import 'package:stapo_driver/features/forget_password/data/services%20/forget_password_service.dart';
import 'package:dartz/dartz.dart';

class ForgetPasswordRepo {
  final ForgetPasswordService _forgetPasswordService;

  ForgetPasswordRepo(this._forgetPasswordService);

  Future<Either<Failure, UserDataResponse>> getUserData(
      UserDataRequest parameter) async {
    try {
      return Right(await _forgetPasswordService.getUserData(parameter));
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.serverFailure.message));
    }
  }

  Future<Either<Failure, SendCodeResponse>> sendCode(
      SendCodeRequest parameter) async {
    try {
      return Right(await _forgetPasswordService.sendCode(parameter));
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.serverFailure.message));
    }
  }
}
