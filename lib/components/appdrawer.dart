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
              if (ModalRoute.of(context)?.settings.name != '/home') {
                Navigator.pushReplacementNamed(context, '/home');
              } 
            },
            leading: const Icon(Icons.house),
            title: const Text("Home"),
          ),
          ListTile(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != '/news') {
                Navigator.pushReplacementNamed(context, '/news');
              } 
            },
            leading: const Icon(Icons.newspaper),
            title: const Text("News"),
          ),
          ListTile(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != '/about') {
                Navigator.pushReplacementNamed(context, '/about');
              } 
            },
            leading: const Icon(Icons.question_answer),
            title: const Text("About"),
          ),
          ListTile(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != '/myAccount') {
                Navigator.pushReplacementNamed(context, '/myAccount');
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
                  Navigator.pushReplacementNamed(context, '/login');
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
