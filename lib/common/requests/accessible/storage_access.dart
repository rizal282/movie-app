import 'package:permission_handler/permission_handler.dart';

class StorageAccess {
  static Future<void> requestPermission() async {
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    await Permission.storage.request();
  }
}
}