import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/data/model/authentication/create_session_id_req.dart';
import 'package:app_movies/domain/repository/authentication/authentication_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class CreateSessionIdUsecase implements Usecase<Either, CreateSessionIdReq> {

  @override
  Future<Either> call({CreateSessionIdReq? params}) async {
    return await sl<AuthenticationRepo>().createSessionId(params!);
  }

}