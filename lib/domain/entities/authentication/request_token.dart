class RequestTokenEntity {
  bool? success;
  String? expiresAt;
  String? requestToken;

  RequestTokenEntity({
    this.success,
    this.expiresAt,
    this.requestToken
  });
}