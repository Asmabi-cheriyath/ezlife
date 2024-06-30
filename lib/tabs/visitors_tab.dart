import 'package:ezlife/user/add_visitor.dart';
import 'package:ezlife/user/view_visitor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Visitors extends StatefulWidget {
  const Visitors({super.key});

  @override
  State<Visitors> createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          GestureDetector(onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ViewVisitor()));
                          },
                            child: Text(
                              "View More",
                              style: TextStyle(color: Colors.blue, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const Text("Name : Anil"),
                      const Text("Phone no : 78765557687"),
                      const Text("Vehicle  no : 234f5"),
                      const Text("Time : 11:00 AM"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Approved",
                            )),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Rejected",
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddVisitor()));
              },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 148, 105, 102),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    "Add Visitors",
                    style: themedata.textTheme.displayMedium,
                  )),
                ),
              ),
            ),
            
          ],
        ));
  }
}
