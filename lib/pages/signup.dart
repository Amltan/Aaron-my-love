import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * .3,left: MediaQuery.of(context).size.width * .3),
        child: Center(
          child: Container(
            
              height: 800,
              decoration: BoxDecoration(
                color: Colors.grey[100]
              ),
            child: Column(
              
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                  decoration: InputDecoration(
                      hintText: "Firstname",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.5)),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                               ),
               ), Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                  decoration: InputDecoration(
                      hintText: "Lastname",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.5)),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                               ),
               ), Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.5)),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                               ),
               ), Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.5)),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                               ),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.5)),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          "Register and Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
              ),
            ],
          ),
          ),
        )
      ),
    );
  }
}