import 'package:flutter/material.dart';

class newsCard extends StatelessWidget {
  final String imageUrl;
  const newsCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width * .55,
          height: MediaQuery.of(context).size.height * .17,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Image(
                image: NetworkImage(imageUrl),
                height: 180,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Dog cowbot movbvie dog dog dog dog dog dog dog dog dog dog ",),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                    Text("Twitter.com"),
                       Text("Feb 27"),
                  ],)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
