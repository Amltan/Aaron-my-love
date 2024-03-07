import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
// ignore: camel_case_types
class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       drawer: const appDrawer(),
       body: const Center(
         child: Column(
          children: [
            Text("ABOUT PAGE")
          ],
         ),
       ),
    );
  }
}