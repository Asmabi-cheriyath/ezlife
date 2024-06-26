import 'package:ezlife/user/pay2_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PayUser extends StatefulWidget {
  const PayUser({super.key});

  @override
  State<PayUser> createState() => _PayUserState();
}

class _PayUserState extends State<PayUser> {
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
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(""), fit: BoxFit.cover),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "  adadad",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "  Last Date",
                              ),
                              Spacer(),
                              Text(
                                "123  ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pay2User()));
                              },
                                child: InkWell(onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pay2User()));
                                },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 148, 105, 102),
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(25)),
                                    child: Center(
                                        child: Text(
                                      "Pay",
                                      style: themedata.textTheme.displayMedium,
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: 3,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 148, 105, 102),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    "Pay All",
                    style: themedata.textTheme.displayMedium,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
