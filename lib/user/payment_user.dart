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

  List<Map<String, dynamic>> payments = [
    {'payfor': "Pay Dues", 'date':"12/2/2024" ,"amount":"\$1800"},
    {'payfor': "Maintenance", 'date': "04/05/2023","amount":"\$4500"},
    {'payfor': "Utility", 'date':"07/06/2024" ,"amount":"\$2000"},
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
                           Text(
                            payments[index]["payfor"],
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                payments[index]["date"],
                              ),
                              Spacer(),
                              Text(
                                payments[index]["amount"],
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
