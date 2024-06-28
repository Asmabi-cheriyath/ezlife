import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GateUpdateUser extends StatefulWidget {
  const GateUpdateUser({super.key});

  @override
  State<GateUpdateUser> createState() => _GateUpdateUserState();
}

class _GateUpdateUserState extends State<GateUpdateUser> {
  @override
  Widget build(BuildContext context) {
        final themedata=Theme.of(context);

    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 70,
            leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ))),
            actions: [
              Text(
                "Gate Update  ",
                style: themedata.textTheme.displayMedium,
              ),
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color.fromARGB(255, 188, 161, 157)),
                  child: Column()
            ),
          ), 
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(0, 192, 180, 141),
                Color.fromARGB(15, 86, 110, 135),
                Color.fromARGB(255, 80, 50, 54)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            
          ), 
      ),
    );
  }
}


// Text("Name : Anil"),Text("Phone no : 78765557687"),Text("Vehicle  no : 234f5"),Text("Time : 11:00 AM"),Row()