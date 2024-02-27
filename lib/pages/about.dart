import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       drawer: appDrawer(),
       body: Column(
        children: [
          Text("About")
        ],
       ),
    );
  }
}