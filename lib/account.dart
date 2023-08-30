import 'package:flutter/material.dart';
import 'package:instagramcopy/utils/account_tab1.dart';
import 'package:instagramcopy/utils/account_tab2.dart';
import 'package:instagramcopy/utils/account_tab3.dart';
import 'package:instagramcopy/utils/bubble_stories.dart';
import 'package:instagramcopy/utils/notifications.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: const Text(
            'yournamehere',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Notifications()), // Replace 'YourNewScreen()' with the actual screen you want to navigate to
                );
              },
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile Picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  //Number followers and all that
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
                  //Name and Bio
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content to the left
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Following v ',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
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
                          child: Text(
                            'Message',
                            style: TextStyle(fontSize: 18),
                          ),
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
                          child: Text(
                            'Contact',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Icon(
                          Icons.person_add,
                          size: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              ),
            ),
            //Stories
            SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: .0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: "About"),
                  BubbleStories(text: "Catalog"),
                  BubbleStories(text: "Price"),
                  BubbleStories(text: "Reviews"),
                  BubbleStories(text: "Location"),
                ],
              ),
            ),

            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_on_outlined,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow_outlined,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.photo_camera_front_outlined,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            ]),
            Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
