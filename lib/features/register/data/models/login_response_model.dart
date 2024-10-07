class LoginResponseModel {
  bool status;
  LoginResponseDataModel data;

  LoginResponseModel({
    required this.status,
    required this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
          status: json['status'],
          data: LoginResponseDataModel.fromJson(json['data']));
}

class LoginResponseDataModel {
  String token;
  LoginResponseDataModel({required this.token});

  factory LoginResponseDataModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseDataModel(
        token: json['access_token'],
      );
}
