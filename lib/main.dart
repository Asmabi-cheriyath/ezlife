import 'package:ezlife/admin/login_admin.dart';
import 'package:ezlife/user/login_user.dart';
import 'package:ezlife/user/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    // initialRoute: "/",
    // routes: {
      
    //   '/':(context) => User(),
    //   'login':(context) => LoginUser(),

    // },
      theme: ThemeData(
        textTheme: TextTheme(displayLarge: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
          displayMedium: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: Colors.white,fontSize: 15))
      ),
      home: const User(),
    );
  }
}



