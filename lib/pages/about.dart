import 'package:flutter/material.dart';
import 'package:moderate_activity/components/appdrawer.dart';

// ignore: camel_case_types
class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MediaQuery.of(context).size.width > 1100 ? null : const appDrawer(),
      body: Center(
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
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Image(
                    image: NetworkImage('https://i.imgur.com/JRF4UJK.jpeg'),
                    width: 500,
                    height: 500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
