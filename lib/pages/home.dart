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
      appBar: AppBar(
        automaticallyImplyLeading: false, // Disable the back arrow
      ),
      drawer: MediaQuery.of(context).size.width > 1100 ? null : appDrawer(),
      body: Expanded(
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width > 1100
                  ? MediaQuery.of(context).size.width * .15
                  : 0,
              color: Colors.grey[200],
              child: MediaQuery.of(context).size.width > 1100
                  ? Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            onTap: () {
                              if (ModalRoute.of(context)?.settings.name !=
                                  '/home') {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              } 
                            },
                            leading: const Icon(Icons.house),
                            title: const Text("Home"),
                          ),
                          ListTile(
                            onTap: () {
                              if (ModalRoute.of(context)?.settings.name !=
                                  '/news') {
                                Navigator.pushReplacementNamed(
                                    context, '/news');
                              } 
                            },
                            leading: const Icon(Icons.newspaper),
                            title: const Text("News"),
                          ),
                          ListTile(
                            onTap: () {
                              if (ModalRoute.of(context)?.settings.name !=
                                  '/about') {
                                Navigator.pushReplacementNamed(
                                    context, '/about');
                              }
                            },
                            leading: const Icon(Icons.question_answer),
                            title: const Text("About"),
                          ),
                          ListTile(
                            onTap: () {
                              if (ModalRoute.of(context)?.settings.name !=
                                  '/myAccount') {
                                Navigator.pushReplacementNamed(
                                    context, '/myAccount');
                              }
                            },
                            leading: const Icon(Icons.verified_user),
                            title: const Text("My Account"),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ListTile(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/login');
                                },
                                title: const Text("Logout"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
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
