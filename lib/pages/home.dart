import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
import 'package:moderate_activity/components/moviecard.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: appDrawer(),
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
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Movies'),
                   Row(
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
                      
                   ],),
                   Divider(),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Sort by: Popularity"),
                   
                      
                   ],),
                    Wrap(
                      children: [
                        moveiCard(
                          imageUrl: "https://i.imgur.com/6hdrj8h.jpeg",
                          movieTitle: "DOGHOOD",
                        ),
                        moveiCard(
                          imageUrl: "https://i.imgur.com/ZPWP6hQ.jpeg",
                          movieTitle: "REDDOT",
                        ),
                        moveiCard(
                          imageUrl: "https://i.imgur.com/lweGxbJ.jpeg",
                          movieTitle: "Avengers",
                        ),
                        moveiCard(
                          imageUrl: "https://i.imgur.com/uGaGSKz.png",
                          movieTitle: "Cat NASA",
                        ),
                        moveiCard(
                          imageUrl: "https://i.imgur.com/1gI3tYs.jpeg",
                          movieTitle: "Left Behind",
                        ),
                      
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
