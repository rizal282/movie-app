import 'package:dartz/dartz.dart';

abstract class NowPlayingRepo {
  Future<Either> getNowPlayings();
}