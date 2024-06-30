import 'package:ezlife/user/add_parcel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Parcel extends StatefulWidget {
  const Parcel({super.key});

  @override
  State<Parcel> createState() => _ParcelState();
}

class _ParcelState extends State<Parcel> {
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
                      const Text("Name : Anil"),
                      const Text("Phone no : 78765557687"),
                      const Text("Company : Amazon"),
                      const Text("Time : 11:00 AM"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Spacer(),
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddParcel()));
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
                    "Add Parcel",
                    style: themedata.textTheme.displayMedium,
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
