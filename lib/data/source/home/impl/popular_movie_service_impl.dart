import 'dart:convert';

import 'package:app_movies/core/configs/constans/app_headers.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/home/popular_movie.dart';
import 'package:app_movies/data/source/home/popular_movie_service.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class PopularMovieServiceImpl extends PopularMovieService {
  @override
  Future<Either> getPopularMovies() async {
    
    try {
      var response = await http.get(Uri.parse(AppUrl.popularMovieEndpoint), headers: AppHeaders.headers);
      var popularMovies = PopularMovie.fromJson(json.decode(response.body));

      return Right(popularMovies.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }


  }

}