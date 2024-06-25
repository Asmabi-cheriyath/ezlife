import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgUser extends StatefulWidget {
  const MsgUser({super.key});

  @override
  State<MsgUser> createState() => _MsgUserState();
}

class _MsgUserState extends State<MsgUser> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);

    return SafeArea(
      child: Scaffold(
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
                  title: Row(
                    children: [
                      CircleAvatar(radius: 25,),Column(children: [Text("Name",style: themedata.textTheme.displaySmall,),Text("Room no:",style: themedata.textTheme.displaySmall,)],)
                    ],
                  ),
                  
          actions: [
            Text(
              "Messages  ",
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
                SizedBox(
                  height: 500,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.black26),
                              child: const Text("Hello"),
                            ),
                          );
                        }
                        return Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black26),
                            child: const Text("Hai"),
                          ),
                        );
                      }),
                ),
                Divider(color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                          )),
      
                      SizedBox(
                        width: MediaQuery.of(context).size.width *0.6,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(hintText: "Enter the message",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send_outlined,
                            color: Colors.black,
                          )),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
