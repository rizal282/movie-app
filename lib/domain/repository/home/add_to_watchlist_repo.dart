import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:dartz/dartz.dart';

abstract class AddToWatchlistRepo {
  Future<Either> addToWatchlist(AddToWatchlistReq request);
}