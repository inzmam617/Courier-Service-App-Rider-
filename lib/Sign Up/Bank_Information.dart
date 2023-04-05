import 'package:delivery_customer_side/Sign%20Up/With_Bank.dart';
import 'package:delivery_customer_side/Sign%20Up/With_Mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bank_Information extends StatelessWidget {
  const Bank_Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff85DAE9),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      bottomRight: Radius.circular(32))),
              height: 50,
              width: MediaQuery.of(context).size.width / 3,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                        "assets/Iconly-Light-outline-Arrow - Left.svg"),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff85DAE9)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff85DAE9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Container(
                  height: .5,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff85DAE9)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff85DAE9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Container(
                  height: .5,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff85DAE9)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff85DAE9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
                Text(
                  "Vehicle Verification",
                  style: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
                Text(
                  "Bank Information",
                  style: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
              ],
            ),
          ),
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return With_Bank();
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return With_Mobile();
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
    );
  }
}
