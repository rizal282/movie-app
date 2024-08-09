import 'package:app_movies/data/source/home/download_image_service.dart';
import 'package:app_movies/domain/repository/home/download_image_repo.dart';
import 'package:app_movies/service_locator.dart';
import 'package:dartz/dartz.dart';

class DownloadImageRepoImpl extends DownloadImageRepo {
  @override
  Future<Either> downloadImage(String posterPath, String fileName) async {
    return await sl<DownloadImageService>().downloadImage(posterPath, fileName);
  }

}