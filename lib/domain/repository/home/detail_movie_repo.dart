import 'package:dartz/dartz.dart';

abstract class DetailMovieRepo {
  Future<Either> getDetailMovie(String movieId);
}