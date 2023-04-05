import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mobile_Account extends StatelessWidget {
  const Mobile_Account({Key? key}) : super(key: key);

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
          "Mobile Account",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0))
                    ]),
                height: 190,
                width: MediaQuery.of(context).size.width / 1.05,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/with moble.svg",
                        width: MediaQuery.of(context).size.width / 1.5,
                      ),
                    ),
                    SizedBox(width: 2),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 200,
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add Amount",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xffCAC2C2)),
                          ),
                          SizedBox(height: 5),
                          Container(
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
                            height: 15,
                            width: 50,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Color(0xffA1E2EE),
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0))
                ]),
                height: MediaQuery.of(context).size.height / 2.4,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        SvgPicture.asset("assets/mobile-phone-icon.svg"),
                        SizedBox(width: 10),
                        Text(
                          "With Mobile",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff585D5E)),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "App Name",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Oguz Bulbul",
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Color(0xff171717)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8F92A1))))),
                    ),
                    SizedBox(height: 20),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Account Name",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "888532112155",
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Color(0xff171717)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8F92A1))))),
                    ),
                    SizedBox(height: 20),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Account Number",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "888532112155",
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Color(0xff171717)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8F92A1))))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
