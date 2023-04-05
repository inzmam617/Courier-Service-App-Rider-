import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Bank_Information.dart';

class Vehicle_Verification extends StatelessWidget {
  const Vehicle_Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff85DAE9),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
              ),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 90),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(32),
                                  bottomRight: Radius.circular(32))),
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffFFAD00),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "We're Glad you are here",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff585D5E)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Vehicle Verification",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Expanded(
                      child: SvgPicture.asset(
                    "assets/Group 11691.svg",
                    fit: BoxFit.cover,
                  ))
                ],
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
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            "Driving Experience",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "Year",
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Year",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Year",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "2 year",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2 year",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "3 year",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "3 year",
                              ),
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            "Vehicle Type",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "Bike",
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Bike",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Bike",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Car",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Car",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Truck",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Truck",
                              ),
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            "Car Make",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "Audi",
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Audi",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Audi",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "BMW",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "BMW",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Ferrari",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Ferrari",
                              ),
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            "Model",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "2004",
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "2004",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2004",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "2005",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2005",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "2006",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2006",
                              ),
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            "Year",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "2021",
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "2021",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2021",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "2022",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2022",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "2023",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "2023",
                              ),
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            "Color",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 40,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "White",
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "White",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "White",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Black",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Black",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Grey",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                value: "Grey",
                              ),
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            bottomLeft: Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 40,
                    width: 150,
                    child: Center(
                        child: Text(
                      "Add attachments car Registration",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    )),
                  ),
                  SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 40,
                    width: 150,
                    child: Center(
                        child: Text(
                      "Add attachments driver Licenses",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "License Plate Number",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 13,
                    width: 70,
                    child: TextFormField(),
                  ),
                  SizedBox(
                    height: 13,
                    width: 70,
                    child: TextFormField(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 140,
              height: 33,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Bank_Information();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff85DAE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 11, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
