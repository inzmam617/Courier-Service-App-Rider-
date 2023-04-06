import 'package:delivery_customer_side/Password/Password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../API/All_APi.dart';

class Varification extends StatelessWidget {
  const Varification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            "assets/Map Icon.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        title: const Text(
          "Verification",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Code is sent to",
                  style: TextStyle(fontSize: 12, color: Color(0xffACACAC)),
                ),
                SizedBox(width: 5),
                Text(
                  "inzmammalik144@gmail.com",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 35,
              width: 150,
              child: ElevatedButton(
                  onPressed: () async{
                    Map<String, dynamic> body = {
                      "email":"inzmamkhan56@gmail.com",
                      "code":"6787"
                    };
                    ApiServiceForForgotPassword.verifyCode(body).then((value){
                      if(value.message=='Code verified'){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Password();
                            }));
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text("Error"),
                            content: value.error!=null?Text(value.error.toString()):Text(value.message.toString()),
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
                      }
                    });


                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff85DAE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: const Text(
                    "Done",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Didn't receive code?",
                  style: TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                ),
                SizedBox(width: 2),
                Text(
                  "Try Again",
                  style: TextStyle(fontSize: 10, color: Color(0xffFD9F00)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
