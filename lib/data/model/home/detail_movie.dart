import 'package:app_movies/domain/entities/home/detail_movie_entity.dart';

class DetailMovie {
  bool adult;
  String backdropPath;
  BelongsToCollection belongsToCollection;
  int budget;
  List<Genre> genres;
  String homepage;
  int id;
  String imdbId;
  List<String> originCountry;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  List<ProductionCompany> productionCompanies;
  List<ProductionCountry> productionCountries;
  DateTime releaseDate;
  int revenue;
  int runtime;
  List<SpokenLanguage> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  DetailMovie({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory DetailMovie.fromJson(Map<String, dynamic> json) {
    return DetailMovie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      belongsToCollection:
          BelongsToCollection.fromJson(json['belongs_to_collection']),
      budget: json['budget'],
      genres: (json['genres'] as List).map((i) => Genre.fromJson(i)).toList(),
      homepage: json['homepage'],
      id: json['id'],
      imdbId: json['imdb_id'],
      originCountry: List<String>.from(json['origin_country']),
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'].toDouble(),
      posterPath: json['poster_path'],
      productionCompanies: (json['production_companies'] as List)
          .map((i) => ProductionCompany.fromJson(i))
          .toList(),
      productionCountries: (json['production_countries'] as List)
          .map((i) => ProductionCountry.fromJson(i))
          .toList(),
      releaseDate: DateTime.parse(json['release_date']),
      revenue: json['revenue'],
      runtime: json['runtime'],
      spokenLanguages: (json['spoken_languages'] as List)
          .map((i) => SpokenLanguage.fromJson(i))
          .toList(),
      status: json['status'],
      tagline: json['tagline'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'].toDouble(),
      voteCount: json['vote_count'],
    );
  }
}

extension DetailMovieExt on DetailMovie {
  DetailMovieEntity toEntity() {
    return DetailMovieEntity(adult: adult, backdropPath: backdropPath, belongsToCollection: belongsToCollection, budget: budget, genres: genres, homepage: homepage, id: id, imdbId: imdbId, originCountry: originCountry, originalLanguage: originalLanguage, originalTitle: originalTitle, overview: overview, popularity: popularity, posterPath: posterPath, productionCompanies: productionCompanies, productionCountries: productionCountries, releaseDate: releaseDate, revenue: revenue, runtime: runtime, spokenLanguages: spokenLanguages, status: status, tagline: tagline, title: title, video: video, voteAverage: voteAverage, voteCount: voteCount);
  }
}
