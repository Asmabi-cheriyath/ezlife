import 'package:ezlife/user/chats_user.dart';
import 'package:ezlife/user/noti_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  List facilities = [
    "payment",
    "Gate Updates",
    "Booking",
    "Care",
    "Activities",
    "Maintanance",
    "Buy/Sell",
    "More"
  ];

  List<Color> facColor = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFC78F7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
    const Color(0xFF61BDFD),
    const Color(0xFF6FE08D),
    // Color.fromARGB(0, 20, 194, 93),
    // Color.fromARGB(0, 202, 147, 29),
    // Color.fromARGB(0, 255, 153, 0),
    // Color.fromARGB(0, 225, 4, 4),
    // Color.fromARGB(0, 12, 210, 51),
    // Color.fromARGB(0, 222, 222, 11),
    // Color.fromARGB(0, 20, 193, 205),
    // Color.fromARGB(0, 232, 13, 112),
  ];

  List<String> facImage = [
    "asset/flat24.jpg",
    "asset/flat5.jpg",
    "asset/flat11.jpg",
    "asset/flat16.jpg",
    "asset/flat17.jpg",
    "asset/flat18.jpg",
    "asset/flat19.jpg",
    "asset/flat21.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
          ),
        ),
        title: const Row(
          children: [
            Text("Name"),
            Icon(Icons.waving_hand_rounded),
          ],
        ),
        actions:  [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatUser()));
          }, icon: Icon(Icons.chat_outlined)),
          SizedBox(
            width: 20,
          ),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotiUser()));
          }, icon: Icon(Icons.notifications_none)),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.logout)
        ],

        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color.fromARGB(255, 188, 161, 157)),
        ),

        // actions: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // children: [CircleAvatar(radius: 10,),Text("Name"),Icon(Icons.waving_hand_rounded),Icon(Icons.message),Icon(Icons.notifications),Icon(Icons.logout)],)],
      ),
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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 8, right: 8),
              child: SizedBox(
                height: 40,
                child: SearchBar(
                  hintText: "Search",
                  hintStyle: MaterialStatePropertyAll(
                      TextStyle(color: Colors.black45, fontSize: 14)),
                  leading: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Our Facilities",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                children: [
                  GridView.builder(
                      itemCount: facilities.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, childAspectRatio: 1.1),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  // image: DecorationImage(image: AssetImage(facImage[index])),
                                  // color: facColor[index],
                                  image: DecorationImage(
                                      image: AssetImage(facImage[index]),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                              // child: Center(child:
                              // facColor[index],
                              // ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              facilities[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.6)),
                            )
                          ],
                        );
                      })
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Community Buzz",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 13, color: Colors.blue),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height: 280,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // heading: colors.[index]["heading"],
                          // subheading:colors.[index]["subheading"],
                          // color:colors.[index]["color"];
                        },
                        child: Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              // color: colors[index]['color'],
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage(facImage[index]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 4),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(label: "", icon: Icon(Icons.home_outlined)),
            const BottomNavigationBarItem(
                label: "", icon: Icon(Icons.person_2_outlined)),
            const BottomNavigationBarItem(
                label: "", icon: Icon(Icons.category_outlined)),
            const BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "",
              icon: Container(
                height: 25,
                width: 50,
                decoration: const BoxDecoration(color: Colors.red),
                child: const Center(
                  child: Text('Panic'),
                ),
              ),
            ),
          ]),
    ));
  }
}
