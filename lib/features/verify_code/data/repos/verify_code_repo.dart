import 'package:stapo_driver/core/exceptions/exceptions.dart';
import 'package:stapo_driver/core/exceptions/failure.dart';
import 'package:stapo_driver/features/verify_code/data/models/verify_code/verify_code_request.dart';
import 'package:stapo_driver/features/verify_code/data/models/verify_code/verify_code_response.dart';
import 'package:stapo_driver/features/verify_code/data/services%20/verify_code_service.dart';
import 'package:dartz/dartz.dart';

class VerifyCodeRepo {
  final VerifyCodeService _verifyCodeService;

  VerifyCodeRepo(this._verifyCodeService);

  Future<Either<Failure, VerifyCodeResponse>> verifyCode(
      VerifyCodeRequest parameter) async {
    try {
      return Right(await _verifyCodeService.verifyCode(parameter));
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.serverFailure.message));
    }
  }
}
