import 'package:flutter/material.dart';
import 'package:flutter_profile_app/util/explore_grid.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  State<UserSearch> createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[300],
            width: double.infinity,
            height: 42,
            child: Row(children: [
              Icon(
                Icons.search,
                color: Colors.grey[500],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Search",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ]),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
