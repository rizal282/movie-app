class CreateSessionWithLogin {
  bool? success;
  String? expiresAt;
  String? requestToken;

  CreateSessionWithLogin({
    required this.success,
    required this.expiresAt,
    required this.requestToken
  });

  CreateSessionWithLogin.fromJson(Map<String, dynamic> data) {
    success = data['success'];
    expiresAt = data['expires_at'];
    requestToken = data['request_token'];
  }
}