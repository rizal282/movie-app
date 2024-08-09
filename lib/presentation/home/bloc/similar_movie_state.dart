import 'package:app_movies/domain/entities/home/similar_movie_entity.dart';

abstract class SimilarMovieState {}

class SimilarMovieLoading extends SimilarMovieState {}

class SimilarMovieLoaded extends SimilarMovieState {
  final SimilarMovieEntity similarMovieEntity;

  SimilarMovieLoaded({required this.similarMovieEntity});
}

class SimilarMovieLoadFailure extends SimilarMovieState {}