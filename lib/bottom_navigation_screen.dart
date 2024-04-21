import 'package:flutter/material.dart';
import 'package:shoes_store/screens/mainscreen/mainscreen.dart';
import 'package:shoes_store/custombottomnavbar.dart';
import 'package:shoes_store/screens/search_screen/searchscreen_mainscreen.dart';

import 'screens/order_screen/order_mainscreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    MainPage(), // Replace with your home screen widget
    SearchScreen(),
    SearchScreen(),
    SearchScreen(),
    OrderHistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            extendBody: true,
            body: IndexedStack(
              index: _selectedIndex,
              children: _screens,
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              iconSize: 30,
              selectedIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
