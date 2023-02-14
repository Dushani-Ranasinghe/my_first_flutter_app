
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String storyText;
  Story({required this.storyText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink[100]),
        child: Center(child: Text(storyText)),
      ),
    );
  }
}