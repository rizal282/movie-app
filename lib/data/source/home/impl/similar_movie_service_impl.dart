import 'dart:convert';

import 'package:app_movies/core/configs/constans/app_headers.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/home/similar_movie.dart';
import 'package:app_movies/data/source/home/similar_movie_service.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class SimilarMovieServiceImpl extends SimilarMovieService {
  @override
  Future<Either> getSimilarMovies(String movieId) async {
    var urlSimilarMovie = AppUrl.similarMovieEndpoint.replaceAll("{movieId}", movieId);

    try {
      var response = await http.get(Uri.parse(urlSimilarMovie), headers: AppHeaders.headers);

      var similarMovieModel = SimilarMovie.fromJson(json.decode(response.body));

      return Right(similarMovieModel.toEntity());
    } on Exception catch(e) {
      return Left(e);
    }
  }

}