import 'package:delivery_customer_side/Forget%20Password/Forget_Password.dart';
import 'package:delivery_customer_side/Sign_In%20&%20Sign_Up/Sign_Up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../API/All_APi.dart';
import '../Bottom bar/Bottom_bar.dart';

class Sign_In extends StatefulWidget {
  Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  bool _loading= false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      color: Colors.grey,

      inAsyncCall: _loading,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Center(child: SvgPicture.asset("assets/6300828.svg")),
              const SizedBox(height: 40),
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      hintText: "Email ID",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: pass,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Forget_Password();
                        }));
                      },
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    )),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 140,
                height: 33,
                child: ElevatedButton(
                    onPressed: () async{
                      setState(() {

                        _loading =true;

                      });
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (BuildContext context) {
                      //       return const Bottom_bar();
                      //     }));
                      Map<String, dynamic> body = {
                        "email": email.text,
                        "password": pass.text

                      };

                      // Send the API request
                      ApiServiceForSignIn.signin(body).then((value) {
                        if (value.riderId != null) {

                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return Bottom_bar(id: value.riderId.toString(),);
                              }));
                          setState(() {

                            _loading =false;

                          });
                        } else {
                          setState(() {

                            _loading =false;

                          });

                          showDialog(
                            context: context,
                            builder: (BuildContext context) => CupertinoAlertDialog(
                              title: const Text("Error"),
                              content: Text(value.message.toString()),
                              actions: <Widget>[
                                CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"),
                                ),
                              ],
                            ),
                          );
                          // Error
                          print("Error: ${value.riderId}");
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => CupertinoAlertDialog(
                              title: const Text("Error"),
                              content: Text(value.message.toString()),
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
                      "Sign In",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account?",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(width: 3),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Sign_Up();
                        }));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                      ))
                ],
              ),
              const SizedBox(height: 70),
              const Text(
                "Sign In with",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/apple (1).svg"),
                  const SizedBox(width: 20),
                  SvgPicture.asset("assets/16983312581574338606.svg")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
