import 'package:app_movies/data/model/home/add_to_favorite_req.dart';
import 'package:dartz/dartz.dart';

abstract class AddToFavoriteRepo {
  Future<Either> addToFavorite(AddToFavoriteReq request);
}