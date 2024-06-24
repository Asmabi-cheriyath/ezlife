import 'package:ezlife/user/login_user.dart';
import 'package:ezlife/user/signup_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/flat21.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text("Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,shadows: [Shadow(color: Colors.white,blurRadius: 2.0,offset: Offset(4, 1))]
                  )),
              SizedBox(
                height: 150,
              ),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginUser()));
                // Navigator.pushNamed(context, '/login');
              },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Login",
                    style: themedata.textTheme.displayMedium,
                  )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
              },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Signup",
                    style: themedata.textTheme.displayMedium,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
