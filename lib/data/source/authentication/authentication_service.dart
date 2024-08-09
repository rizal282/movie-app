import 'package:app_movies/data/model/authentication/create_session_id_req.dart';
import 'package:app_movies/data/model/authentication/create_session_login_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationService {
  Future<Either> requestToken();
  Future<Either> createSessionWithLogin(CreateSessionLoginReq sessionLoginReq);

 Future<Either> createSessionId(CreateSessionIdReq createSessionId);

}