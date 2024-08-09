import 'package:app_movies/data/source/home/popular_movie_service.dart';
import 'package:app_movies/domain/repository/home/popular_movie_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class PopularMovieRepoImpl extends PopularMovieRepo {
  @override
  Future<Either> getPopularMovies() async {
    return await sl<PopularMovieService>().getPopularMovies();
  }

}