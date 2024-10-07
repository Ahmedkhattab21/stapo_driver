
import 'package:stapo_driver/core/exceptions/failure.dart';

class MessageError extends Failure{
  const MessageError({
    required super.message,
  });

  factory MessageError.fromJson(Map<String, dynamic> json) =>
      MessageError(
        message: json['message'],
      );

}
