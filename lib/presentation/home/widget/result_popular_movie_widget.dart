import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/domain/entities/home/popular_movie_entity.dart';
import 'package:app_movies/domain/usecases/home/download_image_usecase.dart';
import 'package:app_movies/presentation/home/pages/detail_movie.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter/material.dart';

/// widget untuk menampikan list popular movies
Widget resultPopularMovie(BuildContext context, List<Result> listPopularMovies) => ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, i) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("${AppUrl.pathMediaImage}${listPopularMovies[i].posterPath}"),
            const SizedBox(height: 20,),
            Text(listPopularMovies[i].title, style: const TextStyle(fontSize: 22),),
            const SizedBox(height: 20,),
            Row(
              children: [

                /// button untuk lihat detail
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailMovie(movieId: listPopularMovies[i].id.toString(),)));
                }, child: const Text("Lihat Detail")),

                /// buttion untuk download image
                ElevatedButton(
                      onPressed: () async {
                        Map<String, dynamic> map = {
                          'poster_path': listPopularMovies[i].posterPath,
                          'filename': listPopularMovies[i].title.replaceAll(" ", "_")
                        };

                        var result = await sl<DownloadImageUsecase>().call(params: map);

                        result.fold((left) {
                          print("Gagal di download");
                        }, (right) {
                          print("Berhasil di download");
                        });
                      },
                      child: const Text("Download Poster")),
              ],
            ),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
        itemCount: listPopularMovies.length);