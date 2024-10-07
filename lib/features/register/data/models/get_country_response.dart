class GetCountryResponse {
  int id;

  String name;

  GetCountryResponse({
    required this.id,
    required this.name,
  });

  factory GetCountryResponse.fromJson(Map<String, dynamic> json) =>
      GetCountryResponse(
        id: json['id'],
        name: json['name'],
      );
}
