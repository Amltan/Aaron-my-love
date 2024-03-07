import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
import 'package:moderate_activity/components/moviecard.dart';

import 'package:moderate_activity/data/movies.dart';
import 'package:moderate_activity/models/moviemodels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieData> movieList = [];
  List<Map<String, Object>> movieData = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    movieData = sampledata().movies;

    for (int i = 0; i < movieData.length; i++) {
      final movie = movieData[i];
      MovieData movieObject = MovieData(
        id: movie['id'] as String,
        title: movie['title'] as String,
        price: movie['price'] as double,
        pic: movie['pic'] as String,
        desc: movie['desc'] as String,
      );
      movieList.add(movieObject);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const appDrawer(),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .15,
            color: Colors.grey[200],
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("GENRES"),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Search"),
                  ),
                  ListTile(
                    title: Text("ACTION"),
                  ),
                  ListTile(
                    title: Text("ADVENTURE"),
                  ),
                  ListTile(
                    title: Text("BIOGRAPHY"),
                  ),
                  ListTile(
                    title: Text("COMEDY"),
                  ),
                  ListTile(
                    title: Text("CRIME"),
                  ),
                  ListTile(
                    title: Text("DRAMA"),
                  ),
                  ListTile(
                    title: Text("FAMILY"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .85,
            color: Colors.white30,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Movies'),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Season"),
                      Icon(Icons.arrow_left_rounded),
                      Text("Spring"),
                      Icon(Icons.arrow_right_rounded),
                      Text("Television"),
                      Text("Movie"),
                      Text("Film"),
                      Text("All"),
                    ],
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Sort by: Popularity"),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: List.generate(
                          movieList.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: moveiCard(
                              imageUrl: movieList[index].pic,
                              movieTitle: movieList[index].title,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget createCards(int index) {
    return moveiCard(
      imageUrl: movieList[index].pic,
      movieTitle: movieList[index].title,
    );
  }
}