import 'package:dartz/dartz.dart';

abstract class DownloadImageService {
  Future<Either> downloadImage(String posterPath, String fileName);
}