import 'package:delivery_customer_side/Starting_Pages/Page_View.dart';
import 'package:flutter/material.dart';

import 'Starting_Pages/First_Page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Page_View();
  }
}
