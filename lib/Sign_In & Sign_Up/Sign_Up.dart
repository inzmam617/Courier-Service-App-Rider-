import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../API/signUpApi.dart';
import '../Model/signUpModel.dart';
import '../Sign Up/Personal_Information.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Center(child: SvgPicture.asset("assets/6300958.svg")),
            SizedBox(height: 30),
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "First name",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Last name",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
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
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Lahore",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          value: "Lahore",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Islamabad",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          value: "Islamabad",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Jhelum",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          value: "Jhelum",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Faislabad",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          value: "Faislabad",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "karachi",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          value: "karachi",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Sindh",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          value: "Sindh",
                        )
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
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
                        decoration: InputDecoration(
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
                        decoration: InputDecoration(
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
                        decoration: InputDecoration(
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
            SizedBox(height: 50),
            SizedBox(
              width: 140,
              height: 33,
              child: ElevatedButton(
                onPressed: () async{
                  Map<String, dynamic> body = {
                    "firstName": "John",
                    "lastName": "Doe",
                    "email": "use@gmail.com",
                    "password": "mysecretpassword",
                    "phoneNumber": "1234567890",
                    "city": "New York",
                    "dateOfBirth": "1990-01-01"
                  };


                  // Send the API request
                  SignupResponse response = await ApiServiceForSignup.signup(body);

                  // Handle the API response
                  if (response.id != null) {
                    // Success
                    print("User registered with id ${response.id}");
                  } else {
                    // Error
                    print("Error: ${response.message}");
                  }
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Personal_Information();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff85DAE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 11, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(width: 3),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                    ))
              ],
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
