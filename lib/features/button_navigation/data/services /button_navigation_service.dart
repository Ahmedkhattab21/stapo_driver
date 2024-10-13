import 'dart:convert';

import 'package:stapo_driver/core/api/api_consumer.dart';
import 'package:stapo_driver/core/api/status_code.dart';
import 'package:stapo_driver/core/exceptions/exceptions.dart';
import 'package:stapo_driver/core/exceptions/failure.dart';
import 'package:stapo_driver/features/forget_password/data/models/get_user_data/user_data_request.dart';
import 'package:stapo_driver/features/forget_password/data/models/get_user_data/user_data_response.dart';
import 'package:stapo_driver/features/forget_password/data/models/send_code/send_code_request.dart';
import 'package:stapo_driver/features/forget_password/data/models/send_code/send_code_response.dart';
import 'package:stapo_driver/features/forget_password/data/services%20/forget_password_api_end_points.dart';

class ButtonNavigationService {
  ApiConsumer apiConsumer;

  ButtonNavigationService({required this.apiConsumer});

  Future<UserDataResponse> getUserData(UserDataRequest parameter) async {
    final response = await apiConsumer.post(
        ForgetPasswordApiEndPoints.getUserDataUrl(parameter.query), null, null);
    if (jsonDecode(response.body)['status'] == StatusCode.ok) {
      return UserDataResponse.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException(
          serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
    }
  }

  Future<SendCodeResponse> sendCode(SendCodeRequest parameter) async {
    final response = await apiConsumer.post(
        ForgetPasswordApiEndPoints.sendCodeUrl(parameter.userId), null, null);
    if (jsonDecode(response.body)['status'] == StatusCode.ok) {
      return SendCodeResponse.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException(
          serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
    }
  }
}
