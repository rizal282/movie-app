class CreateSessionId {
  bool? success;
  String? sessionId;

  CreateSessionId({
    required this.success,
    required this.sessionId
  });

  CreateSessionId.fromJson(Map<String, dynamic> data) {
    success = data['success'];
    sessionId = data['session_id'];
  }
}