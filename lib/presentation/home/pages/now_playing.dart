import 'package:app_movies/domain/entities/home/now_playing_entity.dart';
import 'package:app_movies/presentation/home/bloc/now_playing_cubit.dart';
import 'package:app_movies/presentation/home/bloc/now_playing_state.dart';
import 'package:app_movies/presentation/home/widget/result_now_playing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Now Playing"),),
      body: BlocProvider(
        create: (_) => NowPlayingCubit()..getNowPlayings(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<NowPlayingCubit, NowPlayingState>(
            builder: (context, state) {
              if (state is NowPlayingLoading) {
                return Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator());
              }

              if (state is NowPlayingLoaded) {
                return _listNowPlaying(context, state.nowPlayings);
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget _listNowPlaying(BuildContext context, NowPlayingEntity nowPlaying) {
    return resultNowPlaying(context, nowPlaying.results);
  }
}
