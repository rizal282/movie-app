import 'package:dartz/dartz.dart';

abstract class PopularMovieRepo {
  Future<Either> getPopularMovies();
}