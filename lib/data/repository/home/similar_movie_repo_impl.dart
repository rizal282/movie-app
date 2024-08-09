import 'package:app_movies/data/source/home/similar_movie_service.dart';
import 'package:app_movies/domain/repository/home/similar_movie_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class SimilarMovieRepoImpl extends SimilarMovieRepo {
  @override
  Future<Either> getSimilarMovies(String movieId) async {
    return await sl<SimilarMovieService>().getSimilarMovies(movieId);
  }

}