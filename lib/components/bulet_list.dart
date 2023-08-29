import 'package:flutter/material.dart';
import 'package:instagramcopy/models/circle.dart';

class BuletList extends StatelessWidget {
  final Bulet bulet;
  const BuletList({super.key, required this.bulet});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      // child: Colu,
    );
  }
}
