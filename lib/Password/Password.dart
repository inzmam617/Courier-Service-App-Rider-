import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

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
          "Password",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              SvgPicture.asset("assets/Developer.svg"),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 17),
                    prefixIcon: SvgPicture.asset(
                      "assets/Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Your new Password",
                    hintStyle: TextStyle(fontSize: 12, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 17),
                    prefixIcon: SvgPicture.asset(
                      "assets/Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(fontSize: 12, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 35,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff85DAE9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Done",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
