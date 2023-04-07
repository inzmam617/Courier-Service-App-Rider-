import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../API/All_APi.dart';
import '../Sign Up/Personal_Information.dart';

class Sign_Up extends StatefulWidget {
   const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  TextEditingController fName =TextEditingController();

  TextEditingController lName =TextEditingController();

  TextEditingController Email =TextEditingController();

  TextEditingController pass =TextEditingController();

  TextEditingController Phone =TextEditingController();

  TextEditingController M =TextEditingController();

  TextEditingController D =TextEditingController();

  TextEditingController Y =TextEditingController();

// TextEditingController fName =TextEditingController();
  String city = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Center(child: SvgPicture.asset("assets/6300958.svg")),
            const SizedBox(height: 30),
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: fName,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "First name",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: lName,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Last name",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: Email,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Email",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: Phone,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Phone number",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 80,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assets/Fill 4.svg"),
                      value: "Lahore",
                      items: const [
                        DropdownMenuItem(
                          value: "Lahore",
                          child: Text(
                            "Lahore",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Islamabad",
                          child: Text(
                            "Islamabad",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Jhelum",
                          child: Text(
                            "Jhelum",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Faislabad",
                          child: Text(
                            "Faislabad",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "karachi",
                          child: Text(
                            "karachi",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Sindh",
                          child: Text(
                            "Sindh",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        )
                      ],
                      onChanged: (value) {

                        print("changed");
                        setState(() {
                         city =  value! ;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(fontSize: 15, color: Color(0xffE2E1E1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 35,
                      width: 25,
                      child: TextFormField(
                        controller: M,
                        decoration: const InputDecoration(
                          hintText: "MM",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Color(0xffC0BDBD)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 35,
                      width: 25,
                      child: TextFormField(
                        controller: D,
                        decoration: const InputDecoration(
                          hintText: "DD",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Color(0xffC0BDBD)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 35,
                      width: 30,
                      child: TextFormField(
                        controller: Y,
                        decoration: const InputDecoration(
                          hintText: "YYY",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Color(0xffC0BDBD)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 140,
              height: 33,
              child: ElevatedButton(
                onPressed: () async{

                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (BuildContext context) {
                  //   return Personal_Information();
                  // }));
                  Map<String, dynamic> body = {
                    "firstName": fName.text,
                    "lastName": lName.text,
                    "email": Email.text,
                    "password": pass.text,
                    "phoneNumber": "1234567890",
                    "city": city,
                    "dateOfBirth": "1990-01-01"
                  };
                  print(body);


                  // Send the API request
                  ApiServiceForSignup.signup(body).then((value) {
                    if (value.id != null) {
                      print(value.id);
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext context) {
                        return Personal_Information(id: value.id ?? '',);

                      }));
                    } else {
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
                  // Handle the API response

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
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                    ))
              ],
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
