import 'package:dartz/dartz.dart';

abstract class DetailMovieService {
  Future<Either> getDetailMovie(String movieId);
}