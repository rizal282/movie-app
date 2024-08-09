import 'package:app_movies/domain/entities/home/popular_movie_entity.dart';
import 'package:app_movies/presentation/home/bloc/popular_movie_cubit.dart';
import 'package:app_movies/presentation/home/bloc/popular_movie_state.dart';
import 'package:app_movies/presentation/home/widget/result_popular_movie_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularMovie extends StatefulWidget {
  const PopularMovie({super.key});

  @override
  State<PopularMovie> createState() => _PopularMovieState();
}

class _PopularMovieState extends State<PopularMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
      ),
      body:
          BlocProvider(
            create: (_) => PopularMovieCubit()..getPopularMovies(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<PopularMovieCubit, PopularMovieState>(builder: (context, state) {
                if(state is PopularMovieLoading) {
                   return Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator());
                }

                if(state is PopularMovieLoaded) {
                  return _listNowPlaying(context, state.popularMovieEntity);
                }

                return Container();
              }),
            ),
          ),
    );
  }

  Widget _listNowPlaying(BuildContext context, PopularMovieEntity popularMovie) => resultPopularMovie(context, popularMovie.results);

  
}
