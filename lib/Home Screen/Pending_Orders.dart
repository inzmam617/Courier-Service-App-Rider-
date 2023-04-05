import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Pending_Orders extends StatelessWidget {
  const Pending_Orders({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.only(left: 20),
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
          "Pending Orders",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/pic.png.jpg"),
              radius: 15,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffE2E2E2),
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 4.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/Delivery.svg"),
                        SizedBox(width: 5),
                        Text(
                          "Complete Orders",
                          style: TextStyle(fontSize: 7, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 10,
                    color: Color(0xffE2E2E2),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFD9F00),
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 4.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/Pending Order.svg"),
                        SizedBox(width: 5),
                        Text(
                          "Pending",
                          style: TextStyle(fontSize: 7, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 10,
                    color: Color(0xffE2E2E2),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffE2E2E2),
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 4.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/Cancel Orders.svg"),
                        SizedBox(width: 5),
                        Text(
                          "Cancel Orders",
                          style: TextStyle(fontSize: 7, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
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
              height: 115,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.1,
              child: Row(
                children: [
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
                    height: 115,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: SvgPicture.asset(
                      "assets/home-delivery-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Pending",
                              style: TextStyle(
                                fontSize: 10, color: Color(0xffFD9F00),),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "40\$",
                              style: TextStyle(
                                fontSize: 20, color: Color(0xffFD9F00),),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 0.5,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 2.3,
                          color: Color(0xffACACAC),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "0-25JHKU-365",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Ali ahmad shah colony near Kashmir chowk",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Sep 25, 2023 ",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
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
              height: 115,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.1,
              child: Row(
                children: [
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
                    height: 115,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: SvgPicture.asset(
                      "assets/home-delivery-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Pending",
                              style: TextStyle(
                                fontSize: 10, color: Color(0xffFD9F00),),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "40\$",
                              style: TextStyle(
                                fontSize: 20, color: Color(0xffFD9F00),),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 0.5,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 2.3,
                          color: Color(0xffACACAC),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "0-25JHKU-365",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Ali ahmad shah colony near Kashmir chowk",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Sep 25, 2023 ",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
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
              height: 115,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.1,
              child: Row(
                children: [
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
                    height: 115,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: SvgPicture.asset(
                      "assets/home-delivery-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Pending",
                              style: TextStyle(
                                fontSize: 10, color: Color(0xffFD9F00),),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "40\$",
                              style: TextStyle(
                                fontSize: 20, color: Color(0xffFD9F00),),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 0.5,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 2.3,
                          color: Color(0xffACACAC),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "0-25JHKU-365",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Ali ahmad shah colony near Kashmir chowk",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Sep 25, 2023 ",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
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
              height: 115,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.1,
              child: Row(
                children: [
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
                    height: 115,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: SvgPicture.asset(
                      "assets/home-delivery-icon.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Pending",
                              style: TextStyle(
                                fontSize: 10, color: Color(0xffFD9F00),),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "40\$",
                              style: TextStyle(
                                fontSize: 20, color: Color(0xffFD9F00),),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 0.5,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 2.3,
                          color: Color(0xffACACAC),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "0-25JHKU-365",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Ali ahmad shah colony near Kashmir chowk",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Sep 25, 2023 ",
                          style:
                          TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
