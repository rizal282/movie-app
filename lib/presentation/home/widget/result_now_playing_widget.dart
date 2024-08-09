import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/domain/entities/home/now_playing_entity.dart';
import 'package:app_movies/domain/usecases/home/download_image_usecase.dart';
import 'package:app_movies/presentation/home/pages/detail_movie.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter/material.dart';

Widget resultNowPlaying(BuildContext context, List<Result> listResults) {
  return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, i) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "${AppUrl.pathMediaImage}${listResults[i].posterPath}"),
              const SizedBox(
                height: 20,
              ),
              Text(
                listResults[i].title,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => DetailMovie(
                                  movieId: listResults[i].id.toString(),
                                )));
                      },
                      child: const Text("Lihat Detail")),

                    ElevatedButton(
                      onPressed: () async {
                        Map<String, dynamic> map = {
                          'poster_path': listResults[i].posterPath,
                          'filename': listResults[i].title.replaceAll(" ", "_")
                        };

                        await sl<DownloadImageUsecase>().call(params: map);
                      },
                      child: const Text("Download Poster")),
                ],
              )
            ],
          ),
      separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
      itemCount: listResults.length);
}
