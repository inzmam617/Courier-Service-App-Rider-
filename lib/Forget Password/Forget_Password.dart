import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../API/All_APi.dart';
import '../Varification/Varification.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({Key? key}) : super(key: key);

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
          "Forget Password",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset("assets/Forgot password.svg"),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(fontSize: 14, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 160,
                height: 35,
                child: ElevatedButton(
                    onPressed: () async {
                      String email = "inzmamkhan56@gmail.com";
                      ApiServiceForForgotPassword.sendCodeToEmail(email).then((value){
                        if(value.message=='Code sent to email'){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const Varification();
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
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('snack'),
                        duration: const Duration(seconds: 1),
                        action: SnackBarAction(
                          label: 'ACTION',
                          onPressed: () { },
                        ),
                      ));
                      // showDialog(
                      //   context: context,
                      //   builder: (BuildContext context) => CupertinoAlertDialog(
                      //     title: new Text(response.message),
                      //     content: new Text("Invalid Email or Password"),
                      //     actions: <Widget>[
                      //       CupertinoDialogAction(
                      //         onPressed: () {
                      //         Navigator.of(context).push(
                      //             MaterialPageRoute(builder: (BuildContext context) {
                      //           return Varification();
                      //         }));
                      //         },
                      //         child: Text("Ok"),
                      //       ),
                      //     ],
                      //   ),
                      // );

                      // ApiServiceForForgotPassword response = await ApiServiceForForgotPassword.resetPassword(body);

                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (BuildContext context) {
                      //   return Varification();
                      // }));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff85DAE9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: const Text(
                      "Get Code",
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
