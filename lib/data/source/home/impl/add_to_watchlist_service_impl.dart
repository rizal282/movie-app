import 'dart:convert';

import 'package:app_movies/core/configs/constans/app_headers.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:app_movies/data/source/home/add_to_watchlist_service.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class AddToWatchlistServiceImpl extends AddToWatchlistService {
  @override
  Future<Either> addToWatchlist(AddToWatchlistReq request) async {
    try {
      var response = await http.post(Uri.parse(AppUrl.addToWatchlistEndpoint), 
      headers: AppHeaders.headers,
       body: json.encode(request.toJson()));

       return Right(response.statusCode);
    } on Exception catch(e) {
      return Left(e);
    }
  }

}