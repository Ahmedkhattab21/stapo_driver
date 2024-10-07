class VerifyCodeResponse {
  int status;
  String message;
  String token;

  VerifyCodeResponse({
    required this.status,
    required this.message,
    required this.token,
  });

  factory VerifyCodeResponse.fromJson(Map<String, dynamic> json) =>
      VerifyCodeResponse(
        status: json['status'],
        message: json['message'],
        token: json['token'],
      );
}
