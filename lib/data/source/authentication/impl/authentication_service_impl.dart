import 'dart:convert';

import 'package:app_movies/core/configs/constans/app_headers.dart';
import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/authentication/create_session_id_req.dart';
import 'package:app_movies/data/model/authentication/create_session_login_req.dart';
import 'package:app_movies/data/model/authentication/request_token.dart';
import 'package:app_movies/domain/entities/authentication/create_session_id.dart';
import 'package:app_movies/domain/entities/authentication/create_session_with_login.dart';
import 'package:http/http.dart' as http;
import 'package:app_movies/data/source/authentication/authentication_service.dart';
import 'package:dartz/dartz.dart';

class AuthenticationServiceImpl extends AuthenticationService {
  @override
  Future<Either> requestToken() async {
    try {
      var response = await http.get(Uri.parse(AppUrl.requestTokenEnpoint),
          headers: AppHeaders.headers);

      var dataResponse = json.decode(response.body);
      var requestTokenModel = RequestTokenModel.fromJson(dataResponse);

      return Right(requestTokenModel.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either> createSessionWithLogin(
      CreateSessionLoginReq sessionLoginReq) async {
    try {
      var response =
          await http.post(Uri.parse(AppUrl.createSessionWithLoginEndpoint),
              headers: AppHeaders.headers,
              body: json.encode(sessionLoginReq.toMap()));

      var dataResponse = json.decode(response.body);
      var createSessionWithLogin = CreateSessionWithLogin.fromJson(dataResponse);

      return Right(createSessionWithLogin);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either> createSessionId(CreateSessionIdReq createSessionId) async {
    try {
      var response = await http.post(Uri.parse(AppUrl.createSessionIDEndpoint),
          headers: AppHeaders.headers,
          body: json.encode(createSessionId.toMap()));

          var dataResponse = json.decode(response.body);
          var createSessionID = CreateSessionId.fromJson(dataResponse);


          return Right(createSessionID);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
