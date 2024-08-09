import 'package:app_movies/domain/usecases/home/similar_movie_usecase.dart';
import 'package:app_movies/presentation/home/bloc/similar_movie_state.dart';
import 'package:app_movies/service_locator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class SimilarMovieCubit extends Cubit<SimilarMovieState> {

  SimilarMovieCubit() : super(SimilarMovieLoading());

  Future<void> getSimilarMovies(String movieId) async {
    var result = await sl<SimilarMovieUsecase>().call(params: movieId);

    result.fold((left) {
      emit(SimilarMovieLoadFailure());
    }, (data) {
      print("========= from cubit detail movie");
      print(data);
      emit(SimilarMovieLoaded(similarMovieEntity: data));
    });
  }

}