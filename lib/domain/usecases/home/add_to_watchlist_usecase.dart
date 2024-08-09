import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:app_movies/domain/repository/home/add_to_watchlist_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class AddToWatchlistUsecase extends Usecase<Either, AddToWatchlistReq> {
  @override
  Future<Either> call({AddToWatchlistReq? params}) async {
    return await sl<AddToWatchlistRepo>().addToWatchlist(params!);
  }

}