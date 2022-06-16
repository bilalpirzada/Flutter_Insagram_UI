import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String storyName;
  BubbleStories({required this.storyName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[400],
          ),
        ),
        Text(storyName)
      ]),
    );
  }
}
