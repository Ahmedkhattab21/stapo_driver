class UserDataRequest {
  String query;

  UserDataRequest({required this.query});

  Map<String, dynamic> toJson() => {
        "query": query,
      };
}
