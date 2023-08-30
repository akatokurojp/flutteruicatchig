import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'yournamehere',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_alert,
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
          bottom: const TabBar(
            // Add the TabBar below the app bar
            tabs: [
              Tab(icon: Icon(Icons.square)),
              Tab(icon: Icon(Icons.play_arrow)),
              Tab(icon: Icon(Icons.photo_camera_front_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          // Add the TabBarView to hold tab contents
          children: [
            // Tab 1 content
            buildTabContent(),
            // Tab 2 content
            buildTabContent(),
            // Tab 3 content
            buildTabContent(),
          ],
        ),
      ),
    );
  }

  Widget buildTabContent() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              for (int i = 1; i <= 21; i++)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
