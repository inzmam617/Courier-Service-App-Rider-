import 'package:delivery_customer_side/Home%20Screen/Home_Screen.dart';
import 'package:delivery_customer_side/Notification/Notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Account/Account.dart';
import '../Inbox/Inbox.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({Key? key}) : super(key: key);

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {
  static List<Widget> _widgetOptions = <Widget>[
    Home_Screen(),
    NotificationPage(),
    Account(),
    Inbox(),
    Text(
      'Index 1: Home',
      // style: optionStyle,
    ),
    Text(
      'Index 2: Notification',
      // style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      // style: optionStyle,
    ),
    Text(
      'Index 4: CHat',
      // style: optionStyle,
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black,
        child: BottomNavigationBar(
          // selectedItemColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Bottom Home.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Bottom Notification.svg"),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Bottom profile.svg"),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Bottom Chat.svg"),
              label: 'Chat',
            ),

          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
