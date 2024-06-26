import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pay2User extends StatefulWidget {
  const Pay2User({super.key});

  @override
  State<Pay2User> createState() => _Pay2UserState();
}

class _Pay2UserState extends State<Pay2User> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
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
            "Payment  ",
            style: themedata.textTheme.displayMedium,
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color.fromARGB(255, 188, 161, 157)),
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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Amount to Pay :  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "250",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 0.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0),
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Google Pay",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/gpay1.jpeg"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 0.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0),
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Phone Pay",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/phonepay.jpeg"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 0.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0),
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Paytm",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/paytm.jpeg"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 0.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0),
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Bob UPI",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/bobupi.jpeg"),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(3.0, 10.0),
                              blurRadius: 5.0,
                              spreadRadius: .0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0),
                        ],
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
