import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/domain/repository/home/download_image_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class DownloadImageUsecase extends Usecase<Either, Map<String, dynamic>> {
  @override
  Future<Either> call({Map<String, dynamic>? params}) async {
    return await sl<DownloadImageRepo>().downloadImage(params!['poster_path'], params['filename']);
  }


}