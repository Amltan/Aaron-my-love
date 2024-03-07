import 'package:flutter/material.dart';

// ignore: camel_case_types
class appDrawer extends StatelessWidget {
  const appDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text("PAGES")),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            leading: Icon(Icons.house),
            title: Text("Home"),
          ),
          ListTile(
            onTap: () {
               Navigator.pushNamed(context, '/news');
            },
            leading: Icon(Icons.newspaper),
            title: Text("News"),
          ),
          ListTile(
            onTap: () {
               Navigator.pushNamed(context, '/about');
            },
            leading: Icon(Icons.question_answer),
            title: Text("About"),
          ),
          ListTile(
            onTap: () {
               Navigator.pushNamed(context, '/myAccount');
            },
            leading: Icon(Icons.verified_user),
            title: Text("My Account"),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                title: Text("Logout"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
