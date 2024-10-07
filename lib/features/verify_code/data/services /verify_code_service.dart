import 'dart:convert';

import 'package:stapo_driver/core/api/api_consumer.dart';
import 'package:stapo_driver/core/api/status_code.dart';
import 'package:stapo_driver/core/exceptions/exceptions.dart';
import 'package:stapo_driver/core/exceptions/failure.dart';
import 'package:stapo_driver/features/verify_code/data/models/verify_code/verify_code_request.dart';
import 'package:stapo_driver/features/verify_code/data/models/verify_code/verify_code_response.dart';
import 'package:stapo_driver/features/verify_code/data/services%20/verify_code_api_end_points.dart';

class VerifyCodeService {
  ApiConsumer apiConsumer;

  VerifyCodeService({required this.apiConsumer});

  Future<VerifyCodeResponse> verifyCode(VerifyCodeRequest parameter) async {
    final response = await apiConsumer.post(
        VerifyCodeApiEndPoints.verifyCodeUrl(parameter.userId, parameter.code),
        null,
        null);
    if (jsonDecode(response.body)['status'] == StatusCode.ok) {
      return VerifyCodeResponse.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException(
          serverFailure: ServerFailure.fromJson(jsonDecode(response.body)));
    }
  }
}
