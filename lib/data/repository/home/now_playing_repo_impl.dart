import 'package:app_movies/data/source/home/now_playing_service.dart';
import 'package:app_movies/domain/repository/home/now_playing_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class NowPlayingRepoImpl extends NowPlayingRepo {
  @override
  Future<Either> getNowPlayings() async {
    return await sl<NowPlayingService>().getNowPlayings();
  }

}