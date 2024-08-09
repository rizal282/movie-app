import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/data/model/home/add_to_favorite_req.dart';
import 'package:app_movies/domain/repository/home/add_to_favorite_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class AddToFavoriteUsecase extends Usecase<Either, AddToFavoriteReq> {
  @override
  Future<Either> call({AddToFavoriteReq? params}) async {
    return await sl<AddToFavoriteRepo>().addToFavorite(params!);
  }

}