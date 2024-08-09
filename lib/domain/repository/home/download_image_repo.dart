import 'package:dartz/dartz.dart';

abstract class DownloadImageRepo {
  Future<Either> downloadImage(String posterPath, String fileName);
}