import 'package:app_movies/data/model/authentication/create_session_id_req.dart';
import 'package:app_movies/data/model/authentication/create_session_login_req.dart';
import 'package:app_movies/data/source/authentication/authentication_service.dart';
import 'package:app_movies/domain/repository/authentication/authentication_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthentiationRepoImpl extends AuthenticationRepo {


  @override
  Future<Either> createSessionWithLogin(CreateSessionLoginReq createSessionReq) async {
    return await sl<AuthenticationService>().createSessionWithLogin(createSessionReq);
  }

  @override
  Future<Either> deleteSession() {
    // TODO: implement deleteSession
    throw UnimplementedError();
  }

  @override
  Future<Either> requestToken() async {
    return await sl<AuthenticationService>().requestToken();
  }

  @override
  Future<Either> createSessionId(CreateSessionIdReq createSessionId) async {
    return await sl<AuthenticationService>().createSessionId(createSessionId);
  }

}