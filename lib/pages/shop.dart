import 'package:flutter/material.dart';
import 'package:flutter_profile_app/util/search_bar.dart';
import 'package:flutter_profile_app/util/shop_grid.dart';

class UserShop extends StatefulWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  State<UserShop> createState() => _UserShopState();
}

class _UserShopState extends State<UserShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(child: Text("Shop")),
            Icon(Icons.shop_outlined),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8), child: SearchBar()),
          Expanded(child: ShopGrid())
        ],
      ),
    );
  }
}
