import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
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
        actions: const [
          Icon(Icons.message),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications),
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
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("name"), Text("Room no")],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.message))
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 7),
            )
          ],
        ),
      ),
    ));
  }
}
