import 'package:app_movies/domain/entities/home/now_playing_entity.dart';

class NowPlaying {
    Dates? dates;
    int? page;
    List<Result>? results;
    int? totalPages;
    int? totalResults;

    NowPlaying({
        required this.dates,
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    NowPlaying.fromJson(Map<String, dynamic> data) {
      dates = Dates.fromJson(data['dates']);
      page = data['page'];
      results = (data['results'] as List<dynamic>)
          .map((item) => Result.fromJson(item as Map<String, dynamic>))
          .toList();
      totalPages = data['total_pages'];
      totalResults = data['total_results'];
    }

}

extension NowPlayingExt on NowPlaying {
  NowPlayingEntity toEntity() {
    return NowPlayingEntity(dates: dates!, page: page!, results: results!, totalPages: totalPages!, totalResults: totalResults!);
  }
}