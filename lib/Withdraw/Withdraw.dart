import 'package:delivery_customer_side/Bank/Bank.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Mobile Account/Mobile _Account.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: Color(0xff85DAE9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              "assets/Iconly-Light-outline-Arrow - Left.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        title: Text(
          "Withdraw",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff85DAE9),
                        blurRadius: 3.0,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 200,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Bank();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff85DAE9),
                              blurRadius: 3.0,
                              offset: Offset(1.0, 2.0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/bank-finance-loan-icon.svg"),
                          SizedBox(height: 5),
                          Text(
                            "With Bank",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff85DAE9),
                        blurRadius: 3.0,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 200,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Mobile_Account();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff85DAE9),
                              blurRadius: 3.0,
                              offset: Offset(1.0, 2.0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/mobile-phone-icon.svg"),
                          SizedBox(height: 5),
                          Text(
                            "With Mobile",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
