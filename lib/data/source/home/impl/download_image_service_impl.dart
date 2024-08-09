import 'dart:io';

import 'package:app_movies/common/requests/accessible/storage_access.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/source/home/download_image_service.dart';
import 'package:dartz/dartz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class DownloadImageServiceImpl extends DownloadImageService {
  @override
  Future<Either> downloadImage(String posterPath, String fileName) async {
    try {
      // minta izin akses storage (opsional)
      await StorageAccess.requestPermission();

      // Tentukan direktori penyimpanan
      Directory directory = await getExternalStorageDirectory() ??
          await getApplicationDocumentsDirectory();

      // Tentukan path file
      String filePath = path.join(directory.path, fileName);

      // Unduh gambar
      var response = await http.get(Uri.parse("${AppUrl.pathMediaImage}$posterPath"));

      if (response.statusCode == 200) {
        // Simpan gambar ke storage
        File file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);
        
        return const Right("Success download Image!");
      } 

      return Left('Gagal mengunduh gambar: Status ${response.statusCode}');
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
