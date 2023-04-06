import 'package:delivery_customer_side/Home%20Screen/Home_Screen.dart';
import 'package:delivery_customer_side/Notification/Notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Account/Account.dart';
import '../Inbox/Inbox.dart';

class Bottom_bar extends StatefulWidget {
   Bottom_bar({Key? key ,required  this.id}) : super(key: key);

  String id;
  @override
  State<Bottom_bar> createState() => _Bottom_barState(id: id);
}

class _Bottom_barState extends State<Bottom_bar> {
  String id;

  late List<Widget> _widgetOptions;

  _Bottom_barState({required this.id}) {
    _widgetOptions = <Widget>[
      const Home_Screen(),
      const NotificationPage(),
      Account(id: id,),
      const Inbox(),
      const Text(
        'Index 1: Home',
        // style: optionStyle,
      ),
      const Text(
        'Index 2: Notification',
        // style: optionStyle,
      ),
      const Text(
        'Index 3: Profile',
        // style: optionStyle,
      ),
      const Text(
        'Index 4: CHat',
        // style: optionStyle,
      ),
    ];
  }

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
