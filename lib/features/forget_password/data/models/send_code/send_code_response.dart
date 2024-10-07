class SendCodeResponse {
  int status;

  SendCodeResponse({required this.status});

  factory SendCodeResponse.fromJson(Map<String, dynamic> json) =>
      SendCodeResponse(
        status: json['status'],
      );
}
