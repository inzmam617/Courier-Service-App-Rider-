import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Captainx extends StatelessWidget {
  const Captainx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){Navigator.of(context).pop();},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: const [
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
              const Text(
                "CAPTAINX",
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffFD9F00), width: 1.0),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/pic.png.jpg")),
                    color: const Color(0xffFD9F00),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: const [
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
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/Mapping.svg",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 60),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Delivery Time",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "1 h- 35 min",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFD9F00)),
                          ),
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
                              "assets/Call.svg",
                              fit: BoxFit.scaleDown,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Arslan Ahmad\nAli Ahmad Shah Colony street 9 House #14",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
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
                              "assets/Chat.svg",
                              fit: BoxFit.scaleDown,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
