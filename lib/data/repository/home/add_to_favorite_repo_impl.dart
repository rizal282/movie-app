import 'package:app_movies/data/model/home/add_to_favorite_req.dart';
import 'package:app_movies/data/source/home/add_to_favorite_service.dart';
import 'package:app_movies/domain/repository/home/add_to_favorite_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class AddToFavoriteRepoImpl extends AddToFavoriteRepo {
  @override
  Future<Either> addToFavorite(AddToFavoriteReq request) async {
    return await sl<AddToFavoriteService>().addToFavorite(request);
  }

}