import 'package:flutter/material.dart';
import 'package:instagramcopy/Working%20Page/Liked.dart';
import 'package:instagramcopy/Working%20Page/Photos.dart';
import 'package:instagramcopy/Working%20Page/Search.dart';
import 'package:instagramcopy/Working%20Page/account.dart';
import 'package:instagramcopy/Working%20Page/feed.dart';
import 'package:instagramcopy/Working%20Page/home.dart';
import 'package:instagramcopy/Working%20Page/story.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

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
    HomepageBeneran(),
    SearchPage(),
    StoryBruh(),
    LikedPage(),
    UserAccount(),
    Feed(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
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
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
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
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Circle',
          ),
        ],
      ),
    );
  }
}
