class VerifyCodeApiEndPoints {
  static verifyCodeUrl(int userId, String code) =>
      '/api/users/reset/check?user_id=$userId&code=$code';
}
