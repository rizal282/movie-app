import 'dart:convert';

import 'package:app_movies/core/configs/constans/app_headers.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/home/detail_movie.dart';
import 'package:app_movies/data/source/home/detail_movie_service.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class DetailMovieServiceImpl extends DetailMovieService {
  @override
  Future<Either> getDetailMovie(String movieId) async {
    var urlDetailMovie = AppUrl.movieDetailEndpoint.replaceAll("{movieId}", movieId);

    try {
      var response = await http.get(Uri.parse(urlDetailMovie), headers: AppHeaders.headers);

      var detailMovieModel = DetailMovie.fromJson(json.decode(response.body));

      return Right(detailMovieModel.toEntity());

    } on Exception catch(e) {
      return Left(e);
    }
  }
}