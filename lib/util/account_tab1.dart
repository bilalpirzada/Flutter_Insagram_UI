import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  final Color tabColor;

  AccountTab({required this.tabColor});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              color: tabColor,
            ),
          );
        });
  }
}
