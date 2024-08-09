import 'package:app_movies/data/repository/authentication/authentiation_repo_impl.dart';
import 'package:app_movies/data/repository/home/add_to_favorite_repo_impl.dart';
import 'package:app_movies/data/repository/home/add_to_watchlist_repo_impl.dart';
import 'package:app_movies/data/repository/home/detail_movie_repo_impl.dart';
import 'package:app_movies/data/repository/home/download_image_repo_impl.dart';
import 'package:app_movies/data/repository/home/now_playing_repo_impl.dart';
import 'package:app_movies/data/repository/home/popular_movie_repo_impl.dart';
import 'package:app_movies/data/repository/home/similar_movie_repo_impl.dart';
import 'package:app_movies/data/source/authentication/authentication_service.dart';
import 'package:app_movies/data/source/authentication/impl/authentication_service_impl.dart';
import 'package:app_movies/data/source/home/add_to_favorite_service.dart';
import 'package:app_movies/data/source/home/add_to_watchlist_service.dart';
import 'package:app_movies/data/source/home/detail_movie_service.dart';
import 'package:app_movies/data/source/home/download_image_service.dart';
import 'package:app_movies/data/source/home/impl/add_to_favorite_service_impl.dart';
import 'package:app_movies/data/source/home/impl/add_to_watchlist_service_impl.dart';
import 'package:app_movies/data/source/home/impl/detail_movie_service_impl.dart';
import 'package:app_movies/data/source/home/impl/download_image_service_impl.dart';
import 'package:app_movies/data/source/home/impl/now_playing_service_impl.dart';
import 'package:app_movies/data/source/home/impl/popular_movie_service_impl.dart';
import 'package:app_movies/data/source/home/impl/similar_movie_service_impl.dart';
import 'package:app_movies/data/source/home/now_playing_service.dart';
import 'package:app_movies/data/source/home/popular_movie_service.dart';
import 'package:app_movies/data/source/home/similar_movie_service.dart';
import 'package:app_movies/domain/repository/authentication/authentication_repo.dart';
import 'package:app_movies/domain/repository/home/add_to_favorite_repo.dart';
import 'package:app_movies/domain/repository/home/add_to_watchlist_repo.dart';
import 'package:app_movies/domain/repository/home/detail_movie_repo.dart';
import 'package:app_movies/domain/repository/home/download_image_repo.dart';
import 'package:app_movies/domain/repository/home/now_playing_repo.dart';
import 'package:app_movies/domain/repository/home/popular_movie_repo.dart';
import 'package:app_movies/domain/repository/home/similar_movie_repo.dart';
import 'package:app_movies/domain/usecases/authentication/create_session_id_usecase.dart';
import 'package:app_movies/domain/usecases/authentication/create_session_login_usecase.dart';
import 'package:app_movies/domain/usecases/authentication/request_token_usecase.dart';
import 'package:app_movies/domain/usecases/home/add_to_favorite_usecase.dart';
import 'package:app_movies/domain/usecases/home/add_to_watchlist_usecase.dart';
import 'package:app_movies/domain/usecases/home/detail_movie_usecase.dart';
import 'package:app_movies/domain/usecases/home/download_image_usecase.dart';
import 'package:app_movies/domain/usecases/home/now_playing_usecase.dart';
import 'package:app_movies/domain/usecases/home/popular_movie_usecase.dart';
import 'package:app_movies/domain/usecases/home/similar_movie_usecase.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  // untuk inject class service
  sl.registerSingleton<AuthenticationService>(AuthenticationServiceImpl());

  sl.registerSingleton<NowPlayingService>(NowPlayingServiceImpl()); 

  sl.registerSingleton<PopularMovieService>(PopularMovieServiceImpl());

  sl.registerSingleton<DetailMovieService>(DetailMovieServiceImpl());

  sl.registerSingleton<SimilarMovieService>(SimilarMovieServiceImpl());

  sl.registerSingleton<AddToWatchlistService>(AddToWatchlistServiceImpl());

  sl.registerSingleton<AddToFavoriteService>(AddToFavoriteServiceImpl());

  sl.registerSingleton<DownloadImageService>(DownloadImageServiceImpl());

  // untuk inject class repository
  sl.registerSingleton<AuthenticationRepo>(AuthentiationRepoImpl());

  sl.registerSingleton<NowPlayingRepo>(NowPlayingRepoImpl()); 

  sl.registerSingleton<PopularMovieRepo>(PopularMovieRepoImpl());

  sl.registerSingleton<DetailMovieRepo>(DetailMovieRepoImpl());

  sl.registerSingleton<SimilarMovieRepo>(SimilarMovieRepoImpl());

  sl.registerSingleton<AddToWatchlistRepo>(AddToWatchlistRepoImpl());

  sl.registerSingleton<AddToFavoriteRepo>(AddToFavoriteRepoImpl());

  sl.registerSingleton<DownloadImageRepo>(DownloadImageRepoImpl());

  // untuk inject class usecase
  sl.registerSingleton<RequestTokenUsecase>(RequestTokenUsecase());

  sl.registerSingleton<CreateSessionLoginUsecase>(CreateSessionLoginUsecase()); 

  sl.registerSingleton<CreateSessionIdUsecase>(CreateSessionIdUsecase());

  sl.registerSingleton<NowPlayingUsecase>(NowPlayingUsecase()); 

  sl.registerSingleton<PopularMovieUsecase>(PopularMovieUsecase());

  sl.registerSingleton<DetailMovieUsecase>(DetailMovieUsecase());

  sl.registerSingleton<SimilarMovieUsecase>(SimilarMovieUsecase());

  sl.registerSingleton<AddToWatchlistUsecase>(AddToWatchlistUsecase());

  sl.registerSingleton<AddToFavoriteUsecase>(AddToFavoriteUsecase());

  sl.registerSingleton<DownloadImageUsecase>(DownloadImageUsecase());
}
