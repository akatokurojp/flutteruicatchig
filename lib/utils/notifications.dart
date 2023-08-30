import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<bool> isFollowingList = List.generate(9, (index) => false);

  void toggleFollow(int index) {
    setState(() {
      isFollowingList[index] = !isFollowingList[index];
    });
  }

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
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                List<String> commentNames = [
                  'WanderlustAdventurer',
                  'GlobeTrotter_Jess',
                  'BonjourAmelie',
                  'EiffelExplorer',
                  'JetsetterMike',
                  'ChicWanderings',
                  'LostInLouvre',
                  'EiffelDreamer',
                  'CafeCrawlSasha',
                ];

                return ListTile(
                  leading: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black,
                  ),
                  title: Text(
                    '${commentNames[index]} has started following you',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () => toggleFollow(index),
                    style: ElevatedButton.styleFrom(
                      primary: isFollowingList[index]
                          ? Colors.grey
                          : Colors.blue, // Change colors as needed
                    ),
                    child: Text(
                      isFollowingList[index] ? 'Following' : 'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
