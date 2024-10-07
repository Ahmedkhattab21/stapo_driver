class ForgetPasswordApiEndPoints {

  static getUserDataUrl(String query) => '/api/users/reset/data?query=$query';

  static sendCodeUrl(int userId) =>
      '/api/users/reset?user_id=$userId&type=email';
}
