import 'package:ezlife/user/msg_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotiUser extends StatefulWidget {
  const NotiUser({super.key});

  @override
  State<NotiUser> createState() => _NotiUserState();
}

class _NotiUserState extends State<NotiUser> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);

    return Scaffold(
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
            "Notifications  ",
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
        
        child: Column(children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MsgUser()));
          },
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
          ),
        ),],)
        
      ),
    );
  }
}
