import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset(
                        "assets/Map Icon.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Ahmad",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffFD9F00), width: 1.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/pic.png.jpg")),
                            color: Color(0xffFD9F00),
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Inbox",
                  style: TextStyle(fontSize: 23, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 40,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 6,
                    child: SvgPicture.asset(
                      "assets/inbox search.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Type here...",
                    style: TextStyle(fontSize: 12, color: Color(0xff858381)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEBFCFF),
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffFD9F00), width: 1.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic.png.jpg")),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bade Muhammad",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEBFCFF),
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffFD9F00), width: 1.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic.png.jpg")),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jaguar",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEBFCFF),
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffFD9F00), width: 1.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic.png.jpg")),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ali Abdi",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEBFCFF),
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffFD9F00), width: 1.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic.png.jpg")),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bader Muhammad",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEBFCFF),
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffFD9F00), width: 1.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic.png.jpg")),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aimi",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEBFCFF),
                  borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffFD9F00), width: 1.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pic.png.jpg")),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bade Muhammad",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
