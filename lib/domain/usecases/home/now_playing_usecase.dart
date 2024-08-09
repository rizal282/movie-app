import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/domain/repository/home/now_playing_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class NowPlayingUsecase extends Usecase<Either, dynamic> {

  @override
  Future<Either> call({params}) async {
    return await sl<NowPlayingRepo>().getNowPlayings();
  }

}