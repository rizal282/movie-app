import 'package:app_movies/core/configs/constans/app_url.dart';
import 'package:app_movies/data/model/home/add_to_favorite_req.dart';
import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:app_movies/domain/entities/home/detail_movie_entity.dart';
import 'package:app_movies/domain/usecases/home/add_to_favorite_usecase.dart';
import 'package:app_movies/domain/usecases/home/add_to_watchlist_usecase.dart';
import 'package:app_movies/presentation/home/widget/similar_movie_widget.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter/material.dart';

Widget detailMovieData(BuildContext context, DetailMovieEntity detailMovie) => ListView(
  shrinkWrap: true,
      children: [
        Image.network("${AppUrl.pathMediaImage}${detailMovie.posterPath}"),
        Text("Title: ${detailMovie.title}"),
        Text("Tagline: ${detailMovie.tagline}"),
        Text("Status: ${detailMovie.status}"),
        Text("Overview: ${detailMovie.overview}"),
        const SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var result = await sl<AddToFavoriteUsecase>().call(
                    params: AddToFavoriteReq(mediaType: "movie", mediaId: detailMovie.id, favorite: true)
                  );

                  result.fold((left) {
                    var snackbar = const SnackBar(content: Text("Failed Added to Favorite"),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }, (right){
                    var snackbar = const SnackBar(content: Text("Success Added to Favorite"),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  });
                }, child: const Text("Add to Favorite")),
            ElevatedButton(
                onPressed: () async {
                  var result = await sl<AddToWatchlistUsecase>().call(
                    params: AddToWatchlistReq(mediaType: "movie", mediaId: detailMovie.id, watchlist: true)
                  );

                  result.fold((left) {
                    var snackbar = const SnackBar(content: Text("Failed Added to Watchlist"),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }, (right){
                    var snackbar = const SnackBar(content: Text("Success Added to Watchlist"),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  });
                }, child: const Text("Add to Watchlist")),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        
        ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SimilarMovie(movieId: detailMovie.id.toString())));
                }, child: const Text("Similar Movies")),
      ],
    );
