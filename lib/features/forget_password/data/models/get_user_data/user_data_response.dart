class UserDataResponse {
  int status;
  Data data;

  UserDataResponse({required this.status, required this.data});

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      UserDataResponse(
        status: json['status'],
        data: Data.fromJson(json['data']),
      );
}

class Data {
  int id;

  Data({required this.id});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'],
      );
}
