import 'package:flutter/material.dart';

// ignore: camel_case_types
class appDrawer extends StatelessWidget {
  const appDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text("PAGES"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            leading: const Icon(Icons.house),
            title: const Text("Home"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/news');
            },
            leading: const Icon(Icons.newspaper),
            title: const Text("News"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
            leading: const Icon(Icons.question_answer),
            title: const Text("About"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/myAccount');
            },
            leading: const Icon(Icons.verified_user),
            title: const Text("My Account"),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                title: const Text("Logout"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// trired to layout builder here no work
