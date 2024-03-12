import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
// ignore: camel_case_types
class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       drawer:  appDrawer(),
       body: const Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Image(image: NetworkImage('https://i.imgur.com/JRF4UJK.jpeg'),width: 500,height: 500,),
            ),


            
          ],
         ),
       ),
    );
  }
}