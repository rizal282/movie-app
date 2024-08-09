import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/data/model/authentication/create_session_login_req.dart';
import 'package:app_movies/domain/repository/authentication/authentication_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class CreateSessionLoginUsecase implements Usecase<Either, CreateSessionLoginReq> {

  @override
  Future<Either> call({CreateSessionLoginReq? params}) {
    return sl<AuthenticationRepo>().createSessionWithLogin(params!);
  }

}