// ignore: file_names
import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';
class myAccount extends StatelessWidget {
  const myAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       drawer: appDrawer(),
       body: Column(
        children: [
          Text("Myaccount")
        ],
       ),
    );
  }
}