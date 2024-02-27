import 'package:flutter/material.dart';

class moveiCard extends StatelessWidget {
  final String movieTitle, imageUrl;
  const moveiCard(
      {super.key, required this.movieTitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * .15,
          height: MediaQuery.of(context).size.height * .24,
          child: Column(
            children: [
              Text(movieTitle),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: NetworkImage(imageUrl),
                    height: 180,
                  ),
                  const Column(
                    children: [
                      Text("UNIVERSAL STUDIOS"),
                      Divider(),
                      Text("Jan 17, 2024"),
                      Divider(),
                      Text(
                        'A really long text',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.square),
                  Icon(Icons.circle),
                  Icon(Icons.cabin),
                  Icon(Icons.man),
                  Icon(Icons.dangerous),
                  Icon(Icons.qr_code),
                  Icon(Icons.dark_mode),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
