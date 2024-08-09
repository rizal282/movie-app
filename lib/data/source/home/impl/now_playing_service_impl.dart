import 'dart:convert';

import 'package:app_movies/core/configs/constans/app_headers.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/home/now_playing.dart';
import 'package:app_movies/data/source/home/now_playing_service.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class NowPlayingServiceImpl extends NowPlayingService {
  @override
  Future<Either> getNowPlayings() async {
    
    try {
      
      var response = await http.get(Uri.parse(AppUrl.nowPlayingEndpoint),
          headers: AppHeaders.headers);

      var nowPlayingModel = NowPlaying.fromJson(json.decode(response.body));

      return Right(nowPlayingModel.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
