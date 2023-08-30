import 'package:flutter/material.dart';
import 'package:instagramcopy/utils/account_tab1.dart';
import 'package:instagramcopy/utils/account_tab2.dart';
import 'package:instagramcopy/utils/account_tab3.dart';
import 'package:instagramcopy/utils/bubble_stories.dart';

class UserAccount2 extends StatelessWidget {
  const UserAccount2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
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
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined)),
              ],
              pinned: true,
              floating: false,
              snap: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '237',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text('Posts'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '3080',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text('Followers'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '444',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text('Following'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nathaniel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Gamer"),
                          Text(
                            "Youtube Gamer",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text('Following'),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text('Following'),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text('Following'),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text('Following'),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Row(
                        children: [
                          BubbleStories(text: "Story 1"),
                          BubbleStories(text: "Story 2"),
                          BubbleStories(text: "Story 3"),
                          BubbleStories(text: "Story 4"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_3x3_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Posts, Followers, Following content here...
                        SizedBox(height: 20),
                        Text(
                          '237',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('Posts'),
                        SizedBox(height: 10),
                        Text(
                          '3080',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('Followers'),
                        SizedBox(height: 10),
                        Text(
                          '444',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('Following'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AccountTab1(), // Content for Tab 1
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AccountTab2(), // Content for Tab 2
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AccountTab3(), // Content for Tab 3
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
