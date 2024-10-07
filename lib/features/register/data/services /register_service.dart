import 'dart:convert';

import 'package:stapo_driver/core/api/api_consumer.dart';
import 'package:stapo_driver/core/exceptions/exceptions.dart';
import 'package:stapo_driver/core/exceptions/failure.dart';

class RegisterService {
  ApiConsumer apiConsumer;

  RegisterService({required this.apiConsumer});


// Future<LoginResponseModel> loginWithEmailAdnPassword(
//     LoginRequestModel parameter) async {
//   final response = await apiConsumer.post(
//       LoginApiEndPoints.loginUrl,
//       LoginRequestModel(email: parameter.email, password: parameter.password)
//           .toJson(),
//       null);
//   if (jsonDecode(response.body)['status'] == true) {
//     return LoginResponseModel.fromJson(jsonDecode(response.body));
//   } else {
//     throw ServerException(
//         serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
//   }
// }
//
// Future<LoginResponseModel> loginWithGoogle(
//     LoginWithSocialRequestModel parameter) async {
//   final response = await apiConsumer.post(
//       LoginApiEndPoints.loginWithSocialUrl,
//       LoginWithSocialRequestModel(
//               provider: parameter.provider,
//               accessToken: parameter.accessToken)
//           .toJson(),
//       null);
//   if (jsonDecode(response.body)['status'] == true) {
//     return LoginResponseModel.fromJson(jsonDecode(response.body));
//   } else {
//     throw ServerException(
//         serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
//   }
// }

// Future<LoginResponseModel> loginWithApple(
//     LoginWithAppleRequestModel parameter) async {
//   final response = await apiConsumer.post(
//       LoginApiEndPoints.loginWithAppleUrl,
//       LoginWithAppleRequestModel(
//         provider: parameter.provider,
//         tokenId: parameter.tokenId,
//         name: parameter.name,
//         email: parameter.email,
//       ).toJson(),
//       null);
//   if (jsonDecode(response.body)['status'] == true) {
//     return LoginResponseModel.fromJson(jsonDecode(response.body));
//   } else {
//     throw ServerException(
//         serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
//   }
// }

// Future<SuccessResponseModel> sendFCM(FcmRequestModel parameter) async {
//   final response = await apiConsumer.post(
//       LoginApiEndPoints.sendFCMUrl,
//       FcmRequestModel(
//         token: parameter.token,
//       ).toJson(),
//       {
//         ConstantKeys.appAuthorization:
//         "${ConstantKeys.appBearer} ${await CacheHelper.getSecuredString(ConstantKeys.saveTokenToShared)}",
//       });
//   if (response.statusCode == 200) {
//     return SuccessResponseModel.fromJson(jsonDecode(response.body));
//   } else {
//     throw ServerException(
//         serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
//   }
// }
}
