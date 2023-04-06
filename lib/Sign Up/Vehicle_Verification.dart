import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../API/All_APi.dart';

class Vehicle_Verification extends StatelessWidget {
   Vehicle_Verification({Key? key, required this.FrontImage , required this.backImage,required this.id}) : super(key: key);
   String id;
  String FrontImage;
  String backImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
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
                      const SizedBox(height: 90),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(32),
                                  bottomRight: Radius.circular(32))),
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(height: 5),
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffFFAD00),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "We're Glad you are here",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff585D5E)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
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
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff85DAE9)),
                        borderRadius: const BorderRadius.all(Radius.circular(100))),
                    height: 30,
                    width: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff85DAE9),
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
                        border: Border.all(color: const Color(0xffCAC2C2)),
                        borderRadius: const BorderRadius.all(Radius.circular(100))),
                    height: 30,
                    width: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff85DAE9),
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
                        border: Border.all(color: const Color(0xffCAC2C2)),
                        borderRadius: const BorderRadius.all(Radius.circular(100))),
                    height: 30,
                    width: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
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
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
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
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text(
                            "Driving Experience",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
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
                                const InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "Year",
                            items: const [
                              DropdownMenuItem(
                                value: "Year",
                                child: Text(
                                  "Year",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2 year",
                                child: Text(
                                  "2 year",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "3 year",
                                child: Text(
                                  "3 year",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              print(id);
                              print("changed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
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
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text(
                            "Vehicle Type",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
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
                                const InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "Bike",
                            items: const [
                              DropdownMenuItem(
                                value: "Bike",
                                child: Text(
                                  "Bike",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "Car",
                                child: Text(
                                  "Car",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "Truck",
                                child: Text(
                                  "Truck",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
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
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text(
                            "Car Make",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
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
                                const InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "Audi",
                            items: const [
                              DropdownMenuItem(
                                value: "Audi",
                                child: Text(
                                  "Audi",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "BMW",
                                child: Text(
                                  "BMW",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "Ferrari",
                                child: Text(
                                  "Ferrari",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
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
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text(
                            "Model",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
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
                                const InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "2004",
                            items: const [
                              DropdownMenuItem(
                                value: "2004",
                                child: Text(
                                  "2004",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2005",
                                child: Text(
                                  "2005",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2006",
                                child: Text(
                                  "2006",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
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
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text(
                            "Year",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
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
                                const InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "2021",
                            items: const [
                              DropdownMenuItem(
                                value: "2021",
                                child: Text(
                                  "2021",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2022",
                                child: Text(
                                  "2022",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2023",
                                child: Text(
                                  "2023",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
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
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text(
                            "Color",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
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
                                const InputDecoration(border: InputBorder.none),
                            icon: SvgPicture.asset("assets/Fill 4.svg"),
                            value: "White",
                            items: const [
                              DropdownMenuItem(
                                value: "White",
                                child: Text(
                                  "White",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "Black",
                                child: Text(
                                  "Black",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "Grey",
                                child: Text(
                                  "Grey",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
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
                    child: const Center(
                        child: Text(
                      "Add attachments car Registration",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    )),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: const BoxDecoration(
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
                    child: const Center(
                        child: Text(
                      "Add attachments driver Licenses",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
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
            const SizedBox(height: 80),
            SizedBox(
              width: 140,
              height: 33,
              child: ElevatedButton(
                onPressed: () {
                  String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NDJjODQ3YzIwNGVlZTE0NmJlNThmOTkiLCJpYXQiOjE2ODA3MTE4ODN9.2-0K5ghlQDKVW-ypCiWtnY9qdfIAADWitJyPSn9C24E";

                  Map<String, dynamic> body = {
                    "emiratesIdFront": FrontImage,
                    "emiratesIdBack": backImage,
                    "carMake": "admin@zeeshanrajpot.com",
                    "drivingExperience": "admin",
                    "model": "1234567890",
                    "year": "New York",
                    "color": "1990-01-01",
                    "licensePlateNumber": "New York",
                    "userId": id,
                  };
                  ApiServiceForSignup.vehicleInfo(body ,token).then((value) {
                    // if (value. != null) {
                    //   // Navigator.of(context)
                    //   //     .push(MaterialPageRoute(builder: (BuildContext context) {
                    //   //   return Personal_Information();
                    //   // }));
                    // }
                    // if {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: const Text("Error"),
                          content: value.error == null ?  Text(value.message.toString()) :Text(value.error.toString()) ,
                          actions: <Widget>[
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Ok"),
                            ),
                          ],
                        ),
                      );

                    // }
                  });
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (BuildContext context) {
                  //   return Bank_Information();
                  // }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff85DAE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 11, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
