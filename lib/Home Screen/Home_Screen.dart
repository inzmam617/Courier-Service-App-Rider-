import 'package:delivery_customer_side/Home%20Screen/Cancel_Orders.dart';
import 'package:delivery_customer_side/Home%20Screen/Complete_Orders.dart';
import 'package:delivery_customer_side/Home%20Screen/Pending_Orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../API/All_APi.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  String? name;
  void initState(){
    super.initState();
    ApiServiceForUserInfo.GetUserInfo().then((value){
      setState(() {
        name = value.name;

        // value.name = name ;
      });
      // if(value.name == null){
      print(value.name);
      // }
      // else{
      //   showDialog(
      //     context: context,
      //     builder: (BuildContext context) => CupertinoAlertDialog(
      //       title: const Text("Error"),
      //       content: Text(value.name),
      //       actions: <Widget>[
      //         CupertinoDialogAction(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           child: const Text("Ok"),
      //         ),
      //       ],
      //     ),
      //   );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(150))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFD9F00),
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0))
                            ]),
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          "assets/Group 786.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/pic.png.jpg"),
                            radius: 35,
                          ),
                          Text(
                            name  ?? "",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          Text(
                            "ahmadali@gmail.com",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xffCAC2C2)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Profile",
                    hintStyle: const TextStyle(fontSize: 16, color: Colors.black),
                    prefixIcon: SvgPicture.asset(
                      "assets/profile.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/icon.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Privacy",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/icon.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Notification",
                    hintStyle: const TextStyle(fontSize: 16, color: Colors.black),
                    prefixIcon: SvgPicture.asset(
                      "assets/notification.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Notifications",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Switch(
                        activeColor: const Color(0xff85DAE9),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        value: isSwitched,
                        onChanged: (value) {
                          print("VALUE:$value");
                          setState(() {
                            isSwitched = value;
                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Notifications Sound",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Switch(
                        activeColor: const Color(0xff85DAE9),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        value: isSwitched1,
                        onChanged: (value) {
                          print("VALUE:$value");
                          setState(() {
                            isSwitched1 = value;
                          });
                        }),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "More",
                    hintStyle: const TextStyle(fontSize: 16, color: Colors.black),
                    prefixIcon: SvgPicture.asset(
                      "assets/more.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Language",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/arrow.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Country",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/arrow.svg")
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Help",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
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
                          child: Row(
                            children: [
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SvgPicture.asset("assets/icon.svg"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  name ?? "",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff585756),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1,
                                        )
                                      ]),
                                  height: 30,
                                  width: 30,
                                  child: Builder(builder: (context) {
                                    return InkWell(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      child: SvgPicture.asset(
                                        "assets/Group 141.svg",
                                        fit: BoxFit.scaleDown,
                                      ),
                                    );
                                  }))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Column(
                        children: const [
                          Text(
                            "Total earning",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "1025\$",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Transform.translate(
                      offset: const Offset(10, 10),
                      // alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/hhhhh.png",
                        height: 200,
                        // width: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Orders",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Complete_Orders();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff3C64BE),
                              blurRadius: 2,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/home-delivery-icon.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Complete Orders",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff8F92A1)),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "89",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffFD9F00),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Pending_Orders();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff3C64BE),
                              blurRadius: 2,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/forklift-icon.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Pending Orders",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff8F92A1)),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "03",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffFD9F00),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Cancel_Orders();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff3C64BE),
                              blurRadius: 2,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/package-cancelled-icon.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Cancel Orders",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff8F92A1)),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "12",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffFD9F00),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 0.5,
                color: Color(0xff707070),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "New Orders",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff85DAE9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 6.5,
                    child: SvgPicture.asset(
                      "assets/my-orders-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "0-25JHKU-365",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Ali ahmad shah colony near Kashmir chowk",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            "Sep 25 2025 , 25m",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Pending",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffFD9F00)),
                                ),
                                Text("2.3km",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xffFD9F00))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff85DAE9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 6.5,
                    child: SvgPicture.asset(
                      "assets/my-orders-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "0-25JHKU-365",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Ali ahmad shah colony near Kashmir chowk",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            "Sep 25 2025 , 25m",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Pending",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffFD9F00)),
                                ),
                                Text("2.3km",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xffFD9F00))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff85DAE9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 6.5,
                    child: SvgPicture.asset(
                      "assets/my-orders-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "0-25JHKU-365",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Ali ahmad shah colony near Kashmir chowk",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            "Sep 25 2025 , 25m",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff989898)),
                          ),
                          const SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Pending",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffFD9F00)),
                                ),
                                Text("2.3km",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xffFD9F00))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
