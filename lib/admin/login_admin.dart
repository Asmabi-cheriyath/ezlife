import 'package:ezlife/admin/home_admin.dart';
import 'package:flutter/material.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({super.key});

  @override
  State<LoginAdmin> createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("asset/141.jpeg"), fit: BoxFit.cover)
            ),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Email",
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Password",
                  fillColor: Colors.white),
            ),
            Text("Forgot Password?"),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeAdmin()));
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
