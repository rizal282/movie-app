import 'package:dartz/dartz.dart';

abstract class NowPlayingService {
  Future<Either> getNowPlayings();
}