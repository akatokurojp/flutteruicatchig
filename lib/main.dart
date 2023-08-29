import 'package:flutter/material.dart';
import 'package:instagramcopy/feed.dart';
import 'package:instagramcopy/Photos.dart';

import 'bottomnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.blue
          scaffoldBackgroundColor: Colors.white),
      home: const BottomNavBar(),
    );
  }
}
