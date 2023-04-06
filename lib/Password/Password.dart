import 'package:delivery_customer_side/Sign_In%20&%20Sign_Up/Sign_In.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../API/All_APi.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

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
          "Password",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset("assets/Developer.svg"),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 17),
                    prefixIcon: SvgPicture.asset(
                      "assets/Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Your new Password",
                    hintStyle: const TextStyle(fontSize: 12, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 17),
                    prefixIcon: SvgPicture.asset(
                      "assets/Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Confirm Password",
                    hintStyle: const TextStyle(fontSize: 12, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 35,
                width: 150,
                child: ElevatedButton(
                    onPressed: () async{
                      Map<String, dynamic> body = {
                        "email":"inzmamkhan56@gmail.com",
                        "newPassword":"inzmamkhan"
                      };
                      ApiServiceForForgotPassword.changePassword(body).then((value){
                        if(value.message=='Password updated'){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return Sign_In();
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
            ],
          ),
        ),
      ),
    );
  }
}
