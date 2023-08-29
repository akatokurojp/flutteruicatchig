import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramcopy/smooth%20page/page1.dart';
import 'package:instagramcopy/smooth%20page/page2.dart';
import 'package:instagramcopy/utils/modal.dart';
import 'package:like_button/like_button.dart';

class UserPosts extends StatefulWidget {
  const UserPosts({Key? key}) : super(key: key);

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Profile Photo
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Firstyan Maulana ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  LikeButton(
                    size: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: CustomBottomSheet(
                      customHeight: 0.60,
                      icon: Transform.scale(
                        scaleX: -1.0,
                        child: Icon(
                          Icons.chat_bubble_outline_outlined,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  Icon(CupertinoIcons.paperplane),
                ],
              ),
              LikeButton(
                size: 24,
                likeBuilder: (istapped) {
                  return Icon(
                    Icons.bookmark,
                    color: istapped ? Colors.black : Colors.grey,
                  );
                },
              )
            ],
          ),
        ),
        //Liked By....
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text("Liked By "),
              Text(
                'Nathaniel',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                '95 others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 10),
          child: Row(
            children: [
              Text(
                'Sincan.kah?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('  Widiiiih Keren banget oooh my gaaawd'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 10),
          child: Row(
            children: [
              Text(
                'razaan.widiw',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('  Widiiiih Keren banget oooh my gaaawd'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 10),
          child: Row(
            children: [
              Text(
                'nathan.kece',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('  OOOOOOH MY GAAAD'),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: Row(
            children: [
              CustomBottomSheet(
                comment: 'View All Comments',
                customHeight: 0.60,
              ),
            ],
          ),
        ),
        //Caption
        // Padding(
        //   padding: const EdgeInsets.only(top: 8),
        //   child: RichText(
        //     text: TextSpan(
        //       style: TextStyle(color: Colors.black),
        //       children: [
        //         TextSpan(
        //             text: 'Firstyan W',
        //             style: TextStyle(fontWeight: FontWeight.bold)),
        //         TextSpan(text: 'I turn nothing to something')
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
