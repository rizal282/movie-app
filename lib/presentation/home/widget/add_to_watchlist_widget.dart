import 'package:app_movies/data/model/home/add_to_watchlist_req.dart';
import 'package:app_movies/presentation/home/bloc/add_to_watchlist_cubit.dart';
import 'package:app_movies/presentation/home/bloc/add_to_watchlist_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToWatchlistWidget extends StatelessWidget {
  final int movieId;
  const AddToWatchlistWidget({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddToWatchlistCubit, AddToWatchlistState>(
      listener: (context, state) {
        if (state is AddToWatchlistSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Watchlist added successfully!'),
          ));
        } else if (state is AddToWatchlistFailure) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Failed to add watchlist'),
          ));
        }
      },
      builder: (context, state) {
        if (state is AddToWatchlistProcessing) {
          return Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator());
        }

        return ElevatedButton(
            onPressed: () {
              context.read<AddToWatchlistCubit>().addToWatchlist(
                  AddToWatchlistReq(
                      mediaType: "movie", mediaId: movieId, watchlist: true));
            },
            child: const Text("Add to Watchlist"));
      },
    );
  }
}
