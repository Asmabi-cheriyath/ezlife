import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreUser extends StatefulWidget {
  const MoreUser({super.key});

  @override
  State<MoreUser> createState() => _MoreUserState();
}

class _MoreUserState extends State<MoreUser> {
  List<String> more = [
    "Payment",
    "Booking",
    "Care",
    "Activities",
    "Helpers",
  ];

  List<String> moreImage = [
    "asset/flat5.jpg",
    "asset/flat16.jpg",
    "asset/flat18.jpg",
    "asset/flat24.jpg",
    "asset/flat23.jpg",
  ];

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
            "More  ",
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
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(moreImage[index]),
                                fit: BoxFit.cover),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                more[index],
                                style: themedata.textTheme.displayMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }
}
