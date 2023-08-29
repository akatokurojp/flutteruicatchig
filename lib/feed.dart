import 'package:flutter/material.dart';
import 'package:instagramcopy/dummy_data/intro1.dart';
import 'package:instagramcopy/utils/user_posts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  PageController _controller = PageController();
  bool onLastPage = false;

  final List<Widget> pages = [
    Container(color: Colors.blueGrey), // Page 2
    Container(color: Colors.deepOrange), // Page 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          'Posts',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [UserPosts()],
      ),
    );
  }
}
