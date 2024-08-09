class AppUrl {
  static const baseUrl = "https://api.themoviedb.org";
  static const baseUrlImage = "https://image.tmdb.org/t/p/";
  static const sizeImageW342 = "w342/";
  static const sizeImageW154 = "w154/";
  static const versionApi = "/3";
  static const accountId = "21426114";

  static const pathMediaImage = "$baseUrlImage$sizeImageW342";
  static const pathMediaImageW154 = "$baseUrlImage$sizeImageW154";

  // endpoint auth
  static const requestToken = "/authentication/token/new";
  static const createSessionLogin = "/authentication/token/validate_with_login";
  static const createSessionID = "/authentication/session/new";

  // endpoint home -> now playing
  static const nowPlaying = "/movie/now_playing?language=en-US&page=1";
  static const popularMovie = "/movie/popular?language=en-US&page=1";

  // detail movie
  static const detailMovie = "/movie/{movieId}?language=en-US";

  // similar movie
  static const similarMovie = "/movie/{movieId}/similar?language=en-US&page=1";
  static const addToWatchlist = "/account/$accountId/watchlist";
  static const addToFavorite = "/account/$accountId/favorite";

  // request token endpoint
  static const requestTokenEnpoint = "$baseUrl$versionApi$requestToken";

  // create session with login endpoint
  static const createSessionWithLoginEndpoint = "$baseUrl$versionApi$createSessionLogin";

  // create new session ID after login success
  static const createSessionIDEndpoint = "$baseUrl$versionApi$createSessionID";

  // get all now playing endpoint
  static const nowPlayingEndpoint = "$baseUrl$versionApi$nowPlaying";

  static const popularMovieEndpoint = "$baseUrl$versionApi$popularMovie";

  static const movieDetailEndpoint = "$baseUrl$versionApi$detailMovie";

  static const similarMovieEndpoint = "$baseUrl$versionApi$similarMovie";

  static const addToWatchlistEndpoint = "$baseUrl$versionApi$addToWatchlist";
  static const addToFavoriteEndpoint = "$baseUrl$versionApi$addToFavorite";

  
  
}