import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/domain/entities/home/similar_movie_entity.dart';
import 'package:app_movies/presentation/home/bloc/similar_movie_cubit.dart';
import 'package:app_movies/presentation/home/bloc/similar_movie_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// widget untuk menampilkan data similar movie
class SimilarMovie extends StatelessWidget {
  final String movieId;
  const SimilarMovie({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Similar Movie"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocProvider(
          create: (_) => SimilarMovieCubit()..getSimilarMovies(movieId),
          child: BlocBuilder<SimilarMovieCubit, SimilarMovieState>(
              builder: (context, state) {
            if (state is SimilarMovieLoading) {
              return Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator());
            }
        
            if (state is SimilarMovieLoaded) {
              return _listSimilarMovies(
                  context, state.similarMovieEntity.results);
            }
        
            return Container();
          }),
        ),
      ),
    );
  }

  Widget _listSimilarMovies(BuildContext context, List<Result> similarMovies) =>
      ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: similarMovies.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Image.network(
                  "${AppUrl.pathMediaImage}${similarMovies[i].posterPath}"),
                  const SizedBox(height: 20,),
                  Text("Title: ${similarMovies[i].title}"),
                  const SizedBox(height: 20,),
                  Text("Original Title: ${similarMovies[i].originalTitle}"),
                  const SizedBox(height: 20,),
                  Text("Popularity: ${similarMovies[i].popularity}"),
                  const SizedBox(height: 20,),
            ],
          );
        },
      );
}
