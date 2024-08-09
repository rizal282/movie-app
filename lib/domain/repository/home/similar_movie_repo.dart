import 'package:dartz/dartz.dart';

abstract class SimilarMovieRepo {
  Future<Either> getSimilarMovies(String movieId);
}