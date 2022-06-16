import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_profile_app/util/bubble_stories.dart';
import 'package:flutter_profile_app/util/user_posts.dart';
import 'package:matcher/matcher.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List people = ["bilal", "haider", "usama", "kashif", "Akram"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(children: [
          Expanded(
            child: Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                padding: EdgeInsets.all(24),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(storyName: people[index]);
                }),
          ),
          //POSTS
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(username: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
