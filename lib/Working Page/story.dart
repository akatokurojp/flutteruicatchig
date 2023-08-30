import 'package:flutter/material.dart';

class StoryBruh extends StatefulWidget {
  const StoryBruh({super.key});

  @override
  State<StoryBruh> createState() => _StoryBruhState();
}

class _StoryBruhState extends State<StoryBruh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("data")],
      ),
    );
  }
}
