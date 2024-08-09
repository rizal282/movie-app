
class CreateSessionIdReq {
  String? requestToken;

  CreateSessionIdReq({ required this.requestToken });

  Map<String, dynamic> toMap() {
    return {
      'request_token': requestToken
    };
  }
  
}