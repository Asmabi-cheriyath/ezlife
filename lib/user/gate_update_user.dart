import 'package:ezlife/tabs/helpers_tab.dart';
import 'package:ezlife/tabs/parcel_tab.dart';
import 'package:ezlife/tabs/visitors_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GateUpdateUser extends StatefulWidget {
  const GateUpdateUser({super.key});

  @override
  State<GateUpdateUser> createState() => _GateUpdateUserState();
}

class _GateUpdateUserState extends State<GateUpdateUser> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:  Color.fromARGB(255, 188, 161, 157),
            elevation: 0.0,
            toolbarHeight: 55,
            leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ))),
            actions: [
              Text(
                "Gate Update  ",
                style: themedata.textTheme.displayMedium,
              ),
            ],
            // flexibleSpace: Container(
            //     decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(20),
            //             bottomRight: Radius.circular(20)),
            //         color: Color.fromARGB(255, 188, 161, 157)),
            //     ),
            bottom: TabBar(unselectedLabelStyle: themedata.textTheme.displayMedium,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: const [
                  Tab(
                    text: "Visitors",
                  ),
                  Tab(
                    text: "Parcel",
                  ),
                  Tab(
                    text: "Helpers",
                  )
                ]),
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
            child: const Column(
              children: [
               
                Expanded(
                  child: TabBarView(children: [
                    Visitors(),
                    Parcel(),
                    Helpers(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Text("Name : Anil"),Text("Phone no : 78765557687"),Text("Vehicle  no : 234f5"),Text("Time : 11:00 AM"),Row()