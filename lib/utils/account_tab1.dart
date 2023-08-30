import 'package:flutter/material.dart';
import 'package:instagramcopy/utils/user_posts.dart';

import '../Working Page/feed.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Feed()), // Replace 'YourNewScreen()' with the actual screen you want to navigate to
        );
      },
      child: GridView.builder(
        itemCount: 12,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
