import 'package:stapo_driver/core/exceptions/exceptions.dart';
import 'package:stapo_driver/core/exceptions/failure.dart';
import 'package:stapo_driver/features/add_new_address/data/services%20/add_new_address_service.dart';
import 'package:stapo_driver/features/login/data/models/get_country_response.dart';
import 'package:stapo_driver/features/login/data/services%20/login_service.dart';
import 'package:dartz/dartz.dart';

class AddNewAddressRepo {
  final AddNewAddressService _addNewAddressService;

  AddNewAddressRepo(this._addNewAddressService);

  Future<Either<Failure, List<GetCountryResponse>>> getCountry() async {
    try {
      return Right(await _addNewAddressService.getCountry());
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.serverFailure.message));
    }
  }

// Future<Either<Failure, LoginResponseModel>> loginWithEmailAdnPassword(
//     LoginRequestModel parameter) async {
//   try {
//     return Right(await _loginService.loginWithEmailAdnPassword(parameter));
//   } on ServerException catch (failure) {
//     return Left(ServerFailure(message: failure.serverFailure.message));
//   }
// }
//
// Future<Either<Failure, LoginResponseModel>> loginWithSocial(
//     LoginWithSocialRequestModel parameter) async {
//   try {
//     return Right(await _loginService.loginWithGoogle(parameter));
//   } on ServerException catch (failure) {
//     return Left(ServerFailure(message: failure.serverFailure.message));
//   }
// }
//
// Future<Either<Failure, LoginResponseModel>> loginWithApple(
//     LoginWithAppleRequestModel parameter) async {
//   try {
//     return Right(await _loginService.loginWithApple(parameter));
//   } on ServerException catch (failure) {
//     return Left(ServerFailure(message: failure.serverFailure.message));
//   }
// }
// Future<Either<Failure, SuccessResponseModel>> sendFCM(
//     FcmRequestModel parameter) async {
//   try {
//     return Right(await _loginService.sendFCM(parameter));
//   } on ServerException catch (failure) {
//     return Left(ServerFailure(message: failure.serverFailure.message));
//   }
// }
}
