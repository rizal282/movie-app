import 'package:app_movies/domain/entities/home/popular_movie_entity.dart';

class PopularMovie {
    int? page;
    List<Result>? results;
    int? totalPages;
    int? totalResults;

    PopularMovie({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    PopularMovie.fromJson(Map<String, dynamic> data) {
      page = data['page'];
      results = (data['results'] as List<dynamic>)
          .map((item) => Result.fromJson(item as Map<String, dynamic>))
          .toList();
      totalPages = data['total_pages'];
      totalResults = data['total_results'];
    }

}

extension PopularMovieExt on PopularMovie {
  PopularMovieEntity toEntity() {
    return PopularMovieEntity(page: page!, results: results!, totalPages: totalPages!, totalResults: totalResults!);
  }
}