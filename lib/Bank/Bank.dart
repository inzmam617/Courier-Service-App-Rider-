import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: const Color(0xff85DAE9),
        shape: const RoundedRectangleBorder(
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
        title: const Text(
          "Bank",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const [
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
                        "assets/with bank.svg",
                        width: MediaQuery.of(context).size.width / 1.5,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: const [
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
                          const Text(
                            "Add Amount",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xffCAC2C2)),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32),
                                boxShadow: const [
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
              const SizedBox(height: 25),
              Container(
                decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Color(0xffA1E2EE),
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0))
                ]),
                height: MediaQuery.of(context).size.height / 2.4,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 25),
                        SvgPicture.asset("assets/bank-finance-loan-icon.svg"),
                        const SizedBox(width: 10),
                        const Text(
                          "With Bank",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff585D5E)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Card Holder",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: SvgPicture.asset(
                                "assets/Iconly-Broken-Profile.svg",
                                fit: BoxFit.scaleDown,
                              ),
                              hintText: "Oguz Bulbul",
                              hintStyle: const TextStyle(
                                  fontSize: 12, color: Color(0xff171717)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8F92A1))))),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Card Number",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: SvgPicture.asset(
                                "assets/Iconly-Broken-Chart.svg",
                                fit: BoxFit.scaleDown,
                              ),
                              hintText: "888532112155",
                              hintStyle: const TextStyle(
                                  fontSize: 12, color: Color(0xff171717)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8F92A1))))),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    "Expiry Date",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff585D5E)),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(right: 130),
                              child: Text(
                                "CCV",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff585D5E)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                height: 35,
                                width: MediaQuery.of(context).size.width / 2.25,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: SvgPicture.asset(
                                            "assets/Iconly-Broken-Calendar.svg",
                                            fit: BoxFit.scaleDown,
                                          ),
                                          hintText: "01/03/2023",
                                          hintStyle: const TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff171717)),
                                          enabledBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff8F92A1))))),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                height: 35,
                                width: MediaQuery.of(context).size.width / 2.6,
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        prefixIcon: SvgPicture.asset(
                                          "assets/Iconly-Broken-Lock.svg",
                                          fit: BoxFit.scaleDown,
                                        ),
                                        hintText: "0 0 0",
                                        hintStyle: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff171717)),
                                        enabledBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff8F92A1))))),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 35,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff85DAE9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: const Text(
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
