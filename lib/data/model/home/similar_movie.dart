import 'package:app_movies/domain/entities/home/similar_movie_entity.dart';

class SimilarMovie {
  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  SimilarMovie({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory SimilarMovie.fromJson(Map<String, dynamic> json) {
    return SimilarMovie(
      page: json['page'],
      results: (json['results'] as List<dynamic>)
          .map((item) => Result.fromJson(item as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }
}

extension SimilarMovieExt on SimilarMovie {
  SimilarMovieEntity toEntity() {
    return SimilarMovieEntity(page: page, results: results, totalPages: totalPages, totalResults: totalResults);
  }
}
