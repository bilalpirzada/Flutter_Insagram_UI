import 'package:flutter/material.dart';
import 'package:flutter_profile_app/util/account_tab1.dart';
import 'package:flutter_profile_app/util/bubble_stories.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Column(children: [
          Container(
            height: 180,
            padding: const EdgeInsets.only(
              top: 60,
              left: 0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profile(),
                numAndCaption("237", "Posts"),
                numAndCaption("3237", "Followers"),
                numAndCaption("1237", "Following"),
              ],
            ),
          ),
          //Name and Bio
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Muhammad Bilal",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.0),
                  child: Text(
                      "All praise to Allah who favoured me from among many of his slaves"),
                ),
                Text(
                  "youtube.com",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),

          //buttons
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Edit Profile"),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Ad Tools"),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Insights"),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //bublle stories
          Padding(
            padding: EdgeInsets.all(10),
            child: Expanded(
              child: Row(children: [
                BubbleStories(storyName: "story 1"),
                BubbleStories(storyName: "story 1"),
                BubbleStories(storyName: "story 1"),
                BubbleStories(storyName: "story 1"),
              ]),
            ),
          ),

          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
          Expanded(
              child: TabBarView(
            children: [
              AccountTab(tabColor: Colors.purple),
              AccountTab(tabColor: Colors.orange),
              AccountTab(tabColor: Colors.red),
              AccountTab(tabColor: Colors.blue)
            ],
          ))
        ])));
  }
}

Widget numAndCaption(String num, String caption) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        num,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Text(caption)
    ],
  );
}

Widget profile() {
  return Container(
    height: 100,
    width: 100,
    decoration:
        BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent[100]),
  );
}
