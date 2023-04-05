import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Varification/Varification.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({Key? key}) : super(key: key);

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
          "Forget Password",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset("assets/Forgot password.svg"),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(fontSize: 14, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 160,
                height: 35,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Varification();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff85DAE9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Get Code",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
