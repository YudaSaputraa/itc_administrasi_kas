import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:itc_project_kas/features/mainPage/history_page.dart';
import 'package:itc_project_kas/features/mainPage/payment_page.dart';
import 'package:itc_project_kas/features/mainPage/profile_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import './home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectIndex = 0;
  List<Widget> _container = [
    new HomePage(),
    new PaymentPage(),
    new HistoryPage(),
    new ProfilePage(),
  ];
  void onTabTapped(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 4.h,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color.fromARGB(
          255,
          3,
          81,
          92,
        ),
        currentIndex: selectIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
