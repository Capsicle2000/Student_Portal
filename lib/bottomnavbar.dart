import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/courses.dart';
import 'package:flutter_app/screens/profile.dart';
import 'package:flutter_app/loginpage.dart';

class BottomNavBar extends StatefulWidget {

  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    Home(),
    Courses(),
    Profile(),
  ];
  int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // backgroundColor: Colors.red,
      bottomNavigationBar: CurvedNavigationBar(
        index:  _selectedIndex,
        backgroundColor: Colors.transparent,
        color: Colors.blue,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.book,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}