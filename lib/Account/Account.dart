import 'package:delivery_customer_side/Sign_In%20&%20Sign_Up/Sign_In.dart';
import 'package:delivery_customer_side/Transactions/Transactions.dart';
import 'package:delivery_customer_side/Wallet/Wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../API/All_APi.dart';

class Account extends StatelessWidget {
  String id;
  Account({Key? key ,required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            // print(id);
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            "assets/Map Icon.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/pic.png.jpg")),
                    color: const Color(0xffFD9F00),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        offset: Offset(1.0, 2.0),
                      )
                    ]),
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 8),
              const Text(
                "Inzmam Malik",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Transactions();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/swap.svg"),
                      const SizedBox(width: 5),
                      const Text(
                        "Transactions",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Wallet();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/work.svg"),
                      const SizedBox(width: 5),
                      const Text(
                        "My wallet",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {

                  ApiServiceForSignup.deleteId().then((value) {
                    if (value.message == "Rider information deleted successfully") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Sign_In();
                          }));
                    }
                    else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            CupertinoAlertDialog(
                              title: const Text("Error"),
                              content: value.error == null ? Text(value.message.toString()) : Text(value.error.toString()),
                              actions: <Widget>[
                                CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Ok"),
                                ),
                              ],
                            ),
                      );
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/swap.svg"),
                      const SizedBox(width: 5),
                      const Text(
                        "Delete",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset("assets/login.svg"),
              const SizedBox(height: 5),
              InkWell(
                  onTap: () {
                    String token='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NDJlZmY3ZDEzMTU5MGI0Mjg4YzZmNWEiLCJpYXQiOjE2ODA4NTkxNzV9.yA4ewPFaXdxcy-R7KAEjflXAhHbu_U3gZ0bycZnzOGI';
                    ApiServiceForSignIn.logOut().then((value) {
                      if (value.message == "Rider logged out successfully") {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Sign_In();
                            }));
                      }
                      else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                                title: const Text("Error"),
                                content: value.error == null ? Text(value.message.toString()) : Text(value.error.toString()),
                                actions: <Widget>[
                                  CupertinoDialogAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Ok"),
                                  ),
                                ],
                              ),
                        );
                      }
                    });
                      // else
                      //   if(value.message == "Rider logged out successfully") {
                      //   Navigator.of(context).push(
                      //       MaterialPageRoute(builder: (BuildContext context) {
                      //         return Sign_In();
                      //       }));
                      //   // showDialog(
                      //   //   context: context,
                      //   //   builder: (BuildContext context) => CupertinoAlertDialog(
                      //   //     title: const Text("Error"),
                      //   //     content: Text(value.message.toString()),
                      //   //     actions: <Widget>[
                      //   //       CupertinoDialogAction(
                      //   //         onPressed: () {
                      //   //           Navigator.pop(context);
                      //   //         },
                      //   //         child: Text("Ok"),
                      //   //       ),
                      //   //     ],
                      //   //   ),
                      //   // );
                      //   // Error
                      //   // print("Error: ${value.riderId}");

                      // }
                    // });
                  },
                  child: const Text(
                    "Log out",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
