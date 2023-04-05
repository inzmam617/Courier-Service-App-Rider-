import 'package:delivery_customer_side/Password/Password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Varification extends StatelessWidget {
  const Varification({Key? key}) : super(key: key);

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
          "Verification",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Code is sent to",
                  style: TextStyle(fontSize: 12, color: Color(0xffACACAC)),
                ),
                SizedBox(width: 5),
                Text(
                  "inzmammalik144@gmail.com",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                )
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 35,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Password();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff85DAE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive code?",
                  style: TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                ),
                SizedBox(width: 2),
                Text(
                  "Try Again",
                  style: TextStyle(fontSize: 10, color: Color(0xffFD9F00)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
