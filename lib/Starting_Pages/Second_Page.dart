import 'package:delivery_customer_side/Sign_In%20&%20Sign_Up/Sign_In.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Bottom bar/Bottom_bar.dart';


class Second_Page extends StatelessWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          Center(
            child: SvgPicture.asset(
              "assets/second page.svg",
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Get paid when you want",
            style: TextStyle(fontSize: 21, color: Color(0xffFD9F00)),
          ),
          const SizedBox(height: 10),
          const Text(
            "Text to Fill provides a flexible platform to sell your products or\nservices so that you can focus on your sales provides a flexible\nplatform to sell your products or services so that you can focus on",
            style: TextStyle(fontSize: 11, color: Color(0xff585D5E)),
          ),
          const SizedBox(height: 20),
          SvgPicture.asset("assets/Group 11697.svg"),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            child: ElevatedButton(
                onPressed: () async {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Sign_In();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff85DAE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
