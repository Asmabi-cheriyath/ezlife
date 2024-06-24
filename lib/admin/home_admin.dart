import 'package:flutter/material.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.cyan),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Home",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text("About us",style: TextStyle(fontSize: 16),),
                Text("Contact us",style: TextStyle(fontSize: 16),),
                Text("Log out",style: TextStyle(fontSize: 16),)
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.subdirectory_arrow_right_sharp)),
                Text("View User")
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.subdirectory_arrow_right_sharp)),
                Text("View Securities")
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.subdirectory_arrow_right_sharp)),
                Text("View Complints")
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.subdirectory_arrow_right_sharp)),
                Text("Upload Vaccancy")
              ],
            )
          ],
        ),
      ),
    );
  }
}
