import 'package:app_movies/domain/entities/home/detail_movie_entity.dart';

abstract class DetailMovieState {}

class DetailMovieLoading extends DetailMovieState {}

class DetailMovieLoaded extends DetailMovieState {
  final DetailMovieEntity detailMovieEntity;

  DetailMovieLoaded({ required this.detailMovieEntity });
}

class DetailMovieLoadFailure extends DetailMovieState {}