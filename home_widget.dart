import 'package:banking_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  late final String title;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home-icon.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/transactions-icon.svg'),
            label:  'Transfer Money',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/settings-icon.svg'),
            label:  'View Customers',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/smiley-icon.svg'),
            label:  'Account',
          ),
        ],
      ),
    );
  }
}
