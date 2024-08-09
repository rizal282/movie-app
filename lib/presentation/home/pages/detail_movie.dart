import 'package:app_movies/presentation/home/bloc/detail_movie_cubit.dart';
import 'package:app_movies/presentation/home/bloc/detail_movie_state.dart';
import 'package:app_movies/presentation/home/widget/detail_movie_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailMovie extends StatefulWidget {
  final String movieId;
  const DetailMovie({super.key, required this.movieId});

  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Movie"),),
      body: BlocProvider(
        create: (_) => DetailMovieCubit()..getDetailMovie(widget.movieId),
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
            builder: (context, state) {
              if (state is DetailMovieLoading) {
                return Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator());
              }

              if (state is DetailMovieLoaded) {
                return detailMovieData(context, state.detailMovieEntity);
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }

 
}