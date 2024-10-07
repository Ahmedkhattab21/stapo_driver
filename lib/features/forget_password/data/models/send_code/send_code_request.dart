class SendCodeRequest {
  int userId;
  String type;

  SendCodeRequest({
    required this.userId,
    required this.type,
  });

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "type": type,
      };
}
