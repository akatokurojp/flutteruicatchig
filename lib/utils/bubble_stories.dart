import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  const BubbleStories({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
                border: Border.all(color: Colors.grey, width: 2)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
