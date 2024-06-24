import 'dart:ffi';

import 'package:ezlife/user/home_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            
              const Padding(
                padding: EdgeInsets.all(50.0),
                child: 
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("asset/google.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.house),
                    hintText: "Room no",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Phone",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Confirm Password",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
              ),
              GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeUser()));
              },
                child: Center(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 148, 105, 102),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Text(
                      "Signup",
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
