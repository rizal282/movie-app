import 'package:app_movies/domain/usecases/home/popular_movie_usecase.dart';
import 'package:app_movies/presentation/home/bloc/popular_movie_state.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularMovieCubit extends Cubit<PopularMovieState> {
  PopularMovieCubit() : super(PopularMovieLoading());

  Future<void> getPopularMovies() async {
    var returnedPopularMovies = await sl<PopularMovieUsecase>().call();

     returnedPopularMovies.fold((left) {
      emit(PopularMovieLoadFailure());
    }, (data){
      emit(PopularMovieLoaded(popularMovieEntity: data));
    });
  }

}