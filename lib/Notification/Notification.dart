import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Notifications.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "Notification",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
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
                          contentPadding: const EdgeInsets.only(top: 5),
                          hintText: "What are you looking for ",
                          hintStyle:
                              const TextStyle(fontSize: 10, color: Color(0xffCAC2C2)),
                          prefixIcon: SvgPicture.asset(
                            "assets/Iconly-Broken-Search.svg",
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Notifications();
                            }));},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFFFFFF),
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
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text(
                    "This Week",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffFF970B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 20,
                    width: 25,
                    child: const Center(
                        child: Text(
                      "5",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width / 1.75,
                    color: const Color(0xff707070),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
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
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
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
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text(
                    "This Month",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffFF970B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 20,
                    width: 25,
                    child: const Center(
                        child: Text(
                      "5",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width / 1.75,
                    color: const Color(0xff707070),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
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
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
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
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }
}
