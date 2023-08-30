import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramcopy/utils/modal.dart';
import 'package:like_button/like_button.dart';

class Postingan extends StatelessWidget {
  final String name;
  Postingan({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),
        //Post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        //Comment and Stuff

        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, bottom: 16),
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
                          FontAwesomeIcons.comment,
                          size: 22,
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
      ],
    );
  }
}
