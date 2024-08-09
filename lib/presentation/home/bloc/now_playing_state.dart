import 'package:app_movies/domain/entities/home/now_playing_entity.dart';

abstract class NowPlayingState {}

class NowPlayingLoading extends NowPlayingState {}

class NowPlayingLoaded extends NowPlayingState {
  final NowPlayingEntity nowPlayings;

  NowPlayingLoaded({required this.nowPlayings});
}

class NowPlayingLoadFailure extends NowPlayingState {}