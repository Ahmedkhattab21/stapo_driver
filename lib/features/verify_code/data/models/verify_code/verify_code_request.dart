class VerifyCodeRequest {
  int userId;
  String code;

  VerifyCodeRequest({
    required this.userId,
    required this.code,
  });

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "code": code,
      };
}
