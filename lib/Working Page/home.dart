import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramcopy/utils/Postingan.dart';
import 'package:instagramcopy/utils/bubble_stories.dart';
import 'package:instagramcopy/utils/user_posts.dart';

class HomepageBeneran extends StatelessWidget {
  final List people = [
    'Nathan',
    'Firstyan',
    'Alwan',
    'Razaan',
    'Sincan',
    'Gamer',
    'Fitri',
    'Wawdawd'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Row(
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 5),
            GestureDetector(
              onTap: () {},
              // Call the function when arrow is tapped
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.paperplane, color: Colors.black),
          ),
          // Add more IconButton widgets as needed
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Postingan(
                  name: people[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
