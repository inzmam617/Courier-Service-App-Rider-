import 'package:delivery_customer_side/Sign%20Up/Vehicle_Verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Personal_Information extends StatelessWidget {
  const Personal_Information({Key? key}) : super(key: key);

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
                      border: Border.all(color: Color(0xffCAC2C2)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE2E2E2),
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
          SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(1.0, 2.0),
                  )
                ]),
            height: MediaQuery.of(context).size.height / 4,
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "Emirates ID",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(height: 5),
                SvgPicture.asset("assets/name-id-icon.svg"),
                SizedBox(height: 5),
                Text(
                  "Front Side",
                  style: TextStyle(fontSize: 14, color: Color(0xffACACAC)),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFD9F00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Text(
                        "Upload",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(1.0, 2.0),
                  )
                ]),
            height: MediaQuery.of(context).size.height / 4,
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "Emirates ID",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(height: 5),
                SvgPicture.asset("assets/name-id-icon.svg"),
                SizedBox(height: 5),
                Text(
                  "Front Side",
                  style: TextStyle(fontSize: 14, color: Color(0xffACACAC)),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFD9F00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Text(
                        "Upload",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 140,
            height: 33,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Vehicle_Verification();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff85DAE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 11, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
