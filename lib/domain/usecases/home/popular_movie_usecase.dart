import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/domain/repository/home/popular_movie_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class PopularMovieUsecase extends Usecase<Either, dynamic> {

  @override
  Future<Either> call({params}) async {
    return await sl<PopularMovieRepo>().getPopularMovies();
  }

}