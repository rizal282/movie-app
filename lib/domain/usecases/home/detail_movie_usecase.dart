import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/domain/repository/home/detail_movie_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class DetailMovieUsecase extends Usecase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<DetailMovieRepo>().getDetailMovie(params);
  }

}