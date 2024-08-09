import 'package:app_movies/common/widgets/buttons/basic_button.dart';
import 'package:app_movies/presentation/home/pages/now_playing.dart';
import 'package:app_movies/presentation/home/pages/popular_movie.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to App Movies!", style: TextStyle(fontSize: 20),),
              
              const SizedBox(height: 40,),
              
              BasicButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const NowPlaying()));
              }, title: "Now Playing", height: 60,),

              const SizedBox(height: 20,),
             
              BasicButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const PopularMovie()));
              }, title: "Popular Movies", height: 60,),
             
              const SizedBox(height: 20,),
             
              BasicButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const PopularMovie()));
              }, title: "Watchlist", height: 60,),
             
              const SizedBox(height: 20,),
             
              BasicButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const PopularMovie()));
              }, title: "Favorites", height: 60,),
             
            ],
          ),
        ),
      ),
    );
  }
}