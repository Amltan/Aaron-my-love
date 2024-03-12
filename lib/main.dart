import 'package:flutter/material.dart';
import 'package:moderate_activity/pages/about.dart';
import 'package:moderate_activity/pages/home.dart';
import 'package:moderate_activity/pages/myAccount.dart';
import 'package:moderate_activity/pages/news.dart';
import 'package:moderate_activity/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          '/news': (context) => const newsPage(),
          '/about': (context) => const aboutPage(),
          '/myAccount': (context) => const myAccount(),
          '/register': (context) => const RegisterPage(),
        });
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1214326463/photo/excited-audience-clapping-in-the-theater.jpg?s=612x612&w=0&k=20&c=hd2qKM0J6ojYtiJRtNM9JGHR-OWqMkC1rD5vwJqXQW4="),
                fit: BoxFit.fill)),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .5,
            ),
            LoginTab()
          ],
        ),
      ),
    );
  }
}

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * 1,
      color: Colors.grey[200],
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ANDREW TAN 9",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Sign in to continue",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                Text(
                  "Not a member yet?",
                  style: TextStyle(fontSize: 18),
                ),
                Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .05,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Email or Username",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.5)),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.5)),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Keep me logged in",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.teal),
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot your password",
              style: const TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                  decoration: TextDecoration.underline),
            ),
            const SizedBox(
              height: 50,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign in with",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * .1,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Flexible(
                              child: Image(
                                  image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png",
                              )),
                            ),
                          ),
                          Text(
                            "Google",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * .14,
                      decoration:
                          const BoxDecoration(color: Colors.lightBlueAccent),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Flexible(
                              child: Image(
                                  image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/2491px-Logo_of_Twitter.svg.png",
                              )),
                            ),
                          ),
                          Text(
                            "Twitter",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * .10,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Flexible(
                              child: Image(
                                  image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/2048px-Facebook_f_logo_%282021%29.svg.png",
                              )),
                            ),
                          ),
                          Expanded(
                              child: Text(
                            "Facebook",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.copyright),
                  Text(
                    "2021 Awwwards. All rights reserved.",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Text("By signing up, I agree to Awwwards's",
                style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 20,
            ),
            Text("Terms of Service",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.teal,
                    decoration: TextDecoration.underline))
          ],
        ),
      )),
    );
  }
}
