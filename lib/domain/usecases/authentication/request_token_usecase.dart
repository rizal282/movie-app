import 'package:app_movies/core/usecase/usecase_for_auth.dart';
import 'package:app_movies/domain/repository/authentication/authentication_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class RequestTokenUsecase implements UsecaseForAuth<Either> {

  @override
  Future<Either> callForAuth() async {
    return sl<AuthenticationRepo>().requestToken();
  }

}