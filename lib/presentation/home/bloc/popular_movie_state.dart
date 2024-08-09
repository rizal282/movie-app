import 'package:app_movies/domain/entities/home/popular_movie_entity.dart';

abstract class PopularMovieState {}

class PopularMovieLoading extends PopularMovieState {}

class PopularMovieLoaded extends PopularMovieState {
  final PopularMovieEntity popularMovieEntity;

  PopularMovieLoaded({required this.popularMovieEntity});
}

class PopularMovieLoadFailure extends PopularMovieState {}