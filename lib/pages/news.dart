import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
import 'package:moderate_activity/components/newscard.dart';
class newsPage extends StatelessWidget {
  const newsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       drawer: appDrawer(),
       body: Center(
        child: Expanded(child: SingleChildScrollView(
          child: Wrap(children: [
            for (int i = 0; i < 20; i++)   
            newsCard(imageUrl: 'https://i.imgur.com/k2CIc6T.jpeg',),
          
        ]),
        )
        )
       ),
    );
  }
}
