import 'package:app_movies/domain/entities/authentication/request_token.dart';

class RequestTokenModel {
  bool? success;
  String? expiresAt;
  String? requestToken;

  RequestTokenModel({
    required this.success,
    required this.expiresAt,
    required this.requestToken
  });

  RequestTokenModel.fromJson(Map<String,dynamic> data) {
    success = data['success'];
    expiresAt = data['expires_at'];
    requestToken = data['request_token'];
  }
}

extension RequestTokenExt on RequestTokenModel {
   RequestTokenEntity toEntity() {
    return RequestTokenEntity(
      success: success,
      expiresAt: expiresAt,
      requestToken: requestToken
    );
  }
}