import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
