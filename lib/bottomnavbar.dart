import 'package:flutter/material.dart';
import 'package:instagramcopy/account.dart';
import 'package:instagramcopy/feed.dart';
import 'package:instagramcopy/Photos.dart';
import 'package:instagramcopy/nyoba.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserAccount(),
    Feed(),
    HomeScreen2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                child: Icon(Icons.add),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle, // Use a rectangle shape
                  border: Border.all(color: Colors.black), // Add a border
                  borderRadius: BorderRadius.circular(7), // Set border radius
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Home'),
        ],
      ),
    );
  }
}
