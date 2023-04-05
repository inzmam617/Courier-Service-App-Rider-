import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 40,
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 5),
                          hintText: "What are you looking for ",
                          hintStyle:
                              TextStyle(fontSize: 10, color: Color(0xffCAC2C2)),
                          prefixIcon: SvgPicture.asset(
                            "assets/Iconly-Broken-Search.svg",
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: SvgPicture.asset(
                          "assets/Iconly-Broken-Delete.svg",
                          fit: BoxFit.scaleDown,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "This Week",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF970B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 20,
                    width: 25,
                    child: Center(
                        child: Text(
                      "5",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width / 1.75,
                    color: Color(0xff707070),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0))
                            ]),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/Notifi Page.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38, left: 38),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            "assets/True.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffE2E2E2),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      "assets/Notifi Page.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "This Month",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF970B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 20,
                    width: 25,
                    child: Center(
                        child: Text(
                      "5",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width / 1.75,
                    color: Color(0xff707070),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0))
                            ]),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/Notifi Page.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38, left: 38),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            "assets/True.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffE2E2E2),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0))
                            ]),
                        height: 60,
                        width: 60,
                        child: SvgPicture.asset(
                          "assets/Notifi Page.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38, left: 38),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            "assets/True.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffE2E2E2),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffE2E2E2),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 150,
              height: 35,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffD92934),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Delete",
                    style: TextStyle(fontSize: 9, color: Colors.white),
                  )),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 110,
              height: 25,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff85DAE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Delete",
                    style: TextStyle(fontSize: 9, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
