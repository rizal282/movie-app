import 'package:app_movies/domain/usecases/home/now_playing_usecase.dart';
import 'package:app_movies/presentation/home/bloc/now_playing_state.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {

  NowPlayingCubit() : super(NowPlayingLoading());

  Future<void> getNowPlayings() async {
    var returnedNowPlaying = await sl<NowPlayingUsecase>().call();

    returnedNowPlaying.fold((left) {
      emit(NowPlayingLoadFailure());
    }, (data){
      emit(NowPlayingLoaded(nowPlayings: data));
    });
  }
}