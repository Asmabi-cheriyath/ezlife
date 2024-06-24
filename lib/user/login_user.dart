import 'dart:ui';

import 'package:ezlife/admin/home_admin.dart';
import 'package:ezlife/user/home_user.dart';
import 'package:ezlife/user/signup_user.dart';
import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            // Color.fromARGB(255, 106, 166, 229),
            // Color.fromARGB(255, 151, 135, 193),
            // Color.fromARGB(255, 72, 203, 188),
            // Color.fromARGB(255, 205, 194, 95),
            // Color.fromARGB(15, 214, 84, 194),
            // Color.fromARGB(255, 86, 47, 52)
            Color.fromARGB(0, 192, 180, 141),
            Color.fromARGB(15, 86, 110, 135),
            Color.fromARGB(255, 80, 50, 54)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Email",
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Password",
                      fillColor: Colors.white),
                ),
              ),
              const Text("Forgot Password?"),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeUser()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.blue),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Need a Account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Signup()));
                      },
                      child: const Text(
                        "Signup",
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("____________or___________"),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("asset/google.jpg"),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("asset/twitter.jpg"),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("asset/facebook.jpg"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
