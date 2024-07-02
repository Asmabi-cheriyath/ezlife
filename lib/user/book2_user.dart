import 'package:ezlife/tabs/schedule_tab.dart';
import 'package:ezlife/tabs/scheduled_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book2User extends StatefulWidget {
  const Book2User({super.key});

  @override
  State<Book2User> createState() => _Book2UserState();
}

class _Book2UserState extends State<Book2User> {
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
                "Booking  ",
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
                    text: "Schedule",
                  ),
                  Tab(
                    text: "Scheduled",
                  ),
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
                    Schedule(),
                    Scheduled(),
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