import 'package:flutter/material.dart';
import 'package:flutter_profile_app/account.dart';
import 'package:flutter_profile_app/pages/home.dart';
import 'package:flutter_profile_app/pages/reels.dart';
import 'package:flutter_profile_app/pages/search.dart';
import 'package:flutter_profile_app/pages/shop.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;

  _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//different pages to navigate
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
        ],
      ),
    );
  }
}
