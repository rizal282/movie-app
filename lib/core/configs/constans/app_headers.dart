import 'package:app_movies/core/configs/constans/api_keys.dart';

class AppHeaders {
  static const headers = {
            'Authorization': ApiKeys.ACCESSTOKEN,
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          };
}