import 'package:flutter/material.dart';
import 'package:delivery_customer_side/Starting_Pages/First_Page.dart';

import 'Second_Page.dart';
import 'Third_page.dart';

class Page_View extends StatelessWidget {


  final PageController  pageController = PageController();

  List<Widget> pages = [
    First_Page(),
    Second_Page(),
    Third_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[ PageView(
            controller: pageController,
            children: pages,
          ),
          ]
      ),
    );
  }
}
