import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
import 'package:moderate_activity/components/moviecard.dart';
import 'package:http/http.dart' as http;
import 'package:moderate_activity/data/movies.dart';
import 'package:moderate_activity/models/moviemodels.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieData> movieList = [];
  List<Map<String, Object>> movieData = [];
  String query = '';
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      final response = await http
          .get(
            Uri.parse(
                'https://www.themealdb.com/api/json/v1/1/search.php?s=$query'),
          )
          .timeout(Duration(seconds: 10));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final List<dynamic> meals = jsonData['meals'] ?? [];
        List<MovieData> fetchedMovies = meals.map((meal) {
          return MovieData(
            id: meal['idMeal'],
            title: meal['strMeal'],
            pic: meal['strMealThumb'],
            price: 1,
            desc: meal['strInstructions'],
          );
        }).toList();

        setState(() {
          movieList = fetchedMovies;
        });
      } else {
        print('Failed to load movie data: ${response.statusCode}');
        setState(() {
          movieList = [];
        });
      }
    } catch (e) {
      print('Error loading data: $e');
      setState(() {
        movieList = [];
      });
    }
  }

  void refetchData() {
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Season"),

                        Icon(Icons.arrow_left_rounded),
                        Text("Spring"),
                        Icon(Icons.arrow_right_rounded),
                        Text("Television"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Movie"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Film"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("All"),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: TextField(
                            onChanged: (value) {
                              // When the text in the search field changes, update the query
                              setState(() {
                                query = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width:
                                10), // Add spacing between the text field and the button
                        ElevatedButton(
                          onPressed: () {
                            // Fetch data only when the button is clicked
                            refetchData();
                          },
                          child: Text('Search'),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Sort by: Popularity"),
                      ],
                    ),
                    if (movieList.isEmpty)
                      const Text('Go Search No movies found')
                    else
                      Expanded(
                        child: SingleChildScrollView(
                          child: Wrap(
                            children: List.generate(
                              movieList.length,
                              (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: movieCard(
                                  imageUrl: movieList[index].pic,
                                  movieTitle: movieList[index].title,
                                  description: movieList[index].desc,
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
    return movieCard(
      imageUrl: movieList[index].pic,
      movieTitle: movieList[index].title,
      description: movieList[index].desc,
    );
  }
}
