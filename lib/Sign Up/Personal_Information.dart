
import 'dart:io';
import 'package:delivery_customer_side/Sign%20Up/Vehicle_Verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class Personal_Information extends StatefulWidget {
  Personal_Information({Key? key,required this.id}) : super(key: key);
  String id;
  @override
  State<Personal_Information> createState() => _Personal_InformationState(id: id);
}


class _Personal_InformationState extends State<Personal_Information> {

  _Personal_InformationState({required this.id});
    String id;

  File emiratesIdFront=File('');
  File emiratesIdBack=File('');



  void cameraa() async {
    PickedFile? picked = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      emiratesIdFront = File(picked!.path);
      print(emiratesIdFront);
    });
  }

  void galleryy() async {
    PickedFile? picked = await ImagePicker().getImage(source: ImageSource.gallery,maxHeight: 400);
    setState(() {
      emiratesIdFront = File(picked!.path);
      print(emiratesIdFront);

    });
  }
  void emiratescameraa() async {
    PickedFile? picked = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      emiratesIdBack = File(picked!.path);
      print(emiratesIdBack);

    });
  }

  void emiratesgalleryy() async {
    PickedFile? picked = await ImagePicker().getImage(source: ImageSource.gallery,maxHeight: 400);
    setState(() {
      emiratesIdBack = File(picked!.path);
      print(emiratesIdBack);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff85DAE9),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      bottomRight: Radius.circular(32))),
              height: 50,
              width: MediaQuery.of(context).size.width / 3,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                        "assets/Iconly-Light-outline-Arrow - Left.svg"),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff85DAE9)),
                      borderRadius: const BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff85DAE9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Container(
                  height: .5,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffCAC2C2)),
                      borderRadius: const BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffE2E2E2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Container(
                  height: .5,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffCAC2C2)),
                      borderRadius: const BorderRadius.all(Radius.circular(100))),
                  height: 30,
                  width: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffE2E2E2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
                Text(
                  "Vehicle Verification",
                  style: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
                Text(
                  "Bank Information",
                  style: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(1.0, 2.0),
                  )
                ]),
            height: MediaQuery.of(context).size.height / 4,
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Emirates ID",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 5),
                SvgPicture.asset("assets/name-id-icon.svg"),
                const SizedBox(height: 5),
                const Text(
                  "Front Side",
                  style: TextStyle(fontSize: 14, color: Color(0xffACACAC)),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                      onPressed: () {
                        _showFrontDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFD9F00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: const Text(
                        "Upload",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(1.0, 2.0),
                  )
                ]),
            height: MediaQuery.of(context).size.height / 4,
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Emirates ID",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 5),
                SvgPicture.asset("assets/name-id-icon.svg"),
                const SizedBox(height: 5),
                const Text(
                  "Front Side",
                  style: TextStyle(fontSize: 14, color: Color(0xffACACAC)),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                      onPressed: () {
                        _showBackDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFD9F00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: const Text(
                        "Upload",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 140,
            height: 33,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Vehicle_Verification(FrontImage: emiratesIdFront.path, backImage: emiratesIdBack.path, id: id,);
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff85DAE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 11, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
  _showFrontDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: ((context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                child: const Text('Choose from Gallery'),
                onPressed: () {
                  galleryy();
                  Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: const Text('Take Photo'),
                onPressed: () {
                  cameraa();
                  Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);

                },
              )
            ],
          );
        }));
  }
  _showBackDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: ((context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                child: const Text('Choose from Gallery'),
                onPressed: () {
                  emiratesgalleryy();
                  Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: const Text('Take Photo'),
                onPressed: () {
                  emiratescameraa();
                  Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);

                },
              )
            ],
          );
        }));
  }
}
