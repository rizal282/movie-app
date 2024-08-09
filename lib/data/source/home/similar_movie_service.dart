import 'package:dartz/dartz.dart';

abstract class SimilarMovieService {
  Future<Either> getSimilarMovies(String movieId);
}