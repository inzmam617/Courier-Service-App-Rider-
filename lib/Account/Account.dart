import 'package:delivery_customer_side/Transactions/Transactions.dart';
import 'package:delivery_customer_side/Wallet/Wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            "assets/Map Icon.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        title: Text(
          "Account",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/pic.png.jpg")),
                    color: Color(0xffFD9F00),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        offset: Offset(1.0, 2.0),
                      )
                    ]),
                height: 100,
                width: 100,
              ),
              SizedBox(height: 8),
              Text(
                "Inzmam Malik",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Transactions();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
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
                      SizedBox(width: 5),
                      Text(
                        "Transactions",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Wallet();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
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
                      SizedBox(width: 5),
                      Text(
                        "My wallet",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SvgPicture.asset("assets/login.svg"),
              SizedBox(height: 5),
              InkWell(
                  onTap: () {},
                  child: Text(
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
