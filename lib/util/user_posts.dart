import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String username;

  UserPosts({required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            //profile
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            //username
            Expanded(
              child: Text(
                username,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.more_vert,
            )
          ],
        ),
      ),

      //POSTS
      Container(
        height: 400,
        color: Colors.grey,
      ),

      //options below the post
      Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Icon(Icons.messenger_outline_outlined),
                  ),
                  Icon(Icons.share),
                ],
              ),
            ),
            Icon(Icons.bookmark)
          ],
        ),
      ),

      //Liked by text
      Padding(
        padding: EdgeInsets.only(left: 17),
        child: Row(
          children: [
            Text("Liked by "),
            Text(
              "bilal",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(" and"),
            Text(" others", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ),
      //caption
      Padding(
          padding: EdgeInsets.only(left: 8, top: 8),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: username,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " with the words YA RAB I can battle anything"),
            ]),
          )),
    ]);
  }
}
