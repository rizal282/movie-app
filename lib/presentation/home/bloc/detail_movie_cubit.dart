import 'package:app_movies/domain/usecases/home/detail_movie_usecase.dart';
import 'package:app_movies/presentation/home/bloc/detail_movie_state.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {

  DetailMovieCubit() : super(DetailMovieLoading());

  Future<void> getDetailMovie(String movieId) async {
    var result = await sl<DetailMovieUsecase>().call(params: movieId);

    result.fold((left) {
      emit(DetailMovieLoadFailure());
    }, (data) {
      print("========= from cubit detail movie");
      print(data);
      emit(DetailMovieLoaded(detailMovieEntity: data));
    });
  }
}