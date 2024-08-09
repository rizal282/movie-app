import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:app_movies/data/source/home/add_to_watchlist_service.dart';
import 'package:app_movies/domain/repository/home/add_to_watchlist_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class AddToWatchlistRepoImpl extends AddToWatchlistRepo {
  @override
  Future<Either> addToWatchlist(AddToWatchlistReq request) async {
    return await sl<AddToWatchlistService>().addToWatchlist(request);
  }

}