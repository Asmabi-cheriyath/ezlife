import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatUser extends StatefulWidget {
  const ChatUser({super.key});

  @override
  State<ChatUser> createState() => _ChatUserState();
}

class _ChatUserState extends State<ChatUser> {
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
            child: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,))),

        actions:  [
          Text("Chats  ",style: themedata.textTheme.displayMedium,),
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
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 30,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("name"), Text("Room no")],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.message)),
                            )
                          ],
                        ),
                      ),
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
