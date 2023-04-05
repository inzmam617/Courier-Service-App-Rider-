import 'package:delivery_customer_side/Forget%20Password/Forget_Password.dart';
import 'package:delivery_customer_side/Home%20Screen/Home_Screen.dart';
import 'package:delivery_customer_side/Sign_In%20&%20Sign_Up/Sign_Up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Bottom bar/Bottom_bar.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Center(child: SvgPicture.asset("assets/6300828.svg")),
            SizedBox(height: 40),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Email ID",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Forget_Password();
                      }));
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 140,
              height: 33,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Bottom_bar();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff85DAE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  )),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(width: 3),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Sign_Up();
                      }));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                    ))
              ],
            ),
            SizedBox(height: 70),
            Text(
              "Sign In with",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/apple (1).svg"),
                SizedBox(width: 20),
                SvgPicture.asset("assets/16983312581574338606.svg")
              ],
            )
          ],
        ),
      ),
    );
  }
}
