import 'package:dartz/dartz.dart';

abstract class PopularMovieService {
  Future<Either> getPopularMovies();
}