import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:app_movies/domain/usecases/home/add_to_watchlist_usecase.dart';
import 'package:app_movies/presentation/home/bloc/add_to_watchlist_state.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToWatchlistCubit extends Cubit<AddToWatchlistState> {
  AddToWatchlistCubit() : super(AddToWatchlistProcessing());

  Future<void> addToWatchlist(AddToWatchlistReq request) async {
    var result = await sl<AddToWatchlistUsecase>().call(params: request);

    result.fold((left){
      emit(AddToWatchlistFailure());
    }, (right) {
      emit(AddToWatchlistSuccess());
    });
  }
  
}