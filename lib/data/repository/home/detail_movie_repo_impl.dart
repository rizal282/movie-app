import 'package:app_movies/data/source/home/detail_movie_service.dart';
import 'package:app_movies/domain/repository/home/detail_movie_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class DetailMovieRepoImpl extends DetailMovieRepo {
  @override
  Future<Either> getDetailMovie(String movieId) async {
    return await sl<DetailMovieService>().getDetailMovie(movieId);
  }

}