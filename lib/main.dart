import 'package:flutter/material.dart';
import 'package:flutter_profile_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

//profile app code below
Widget profile() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.star_border),
          color: Colors.black,
          onPressed: () {},
        )
      ],
    ),
    body: ListView(
      children: [
        Column(
          children: [
            Container(
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  "assets/images/photo.jpeg",
                  fit: BoxFit.cover,
                )),
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment(-1.0, 0),
              child: Text(
                "Muhammad Bilal",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.only(top: 0, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconButton(Icons.call, "Call"),
                  iconButton(Icons.message, "Text"),
                  iconButton(Icons.video_call, "Video"),
                  iconButton(Icons.email, "Email"),
                  iconButton(Icons.directions, "Direction"),
                  iconButton(Icons.attach_money, "Pay"),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            mobilePhoneListTile(),
          ],
        )
      ],
    ),
  );
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: Icon(Icons.call),
    title: Text("03063376774"),
    subtitle: Text("mobile"),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(Icons.message),
    ),
  );
}

Widget iconButton(IconData _icon, String _iconName) {
  return Container(
    child: TextButton(
      child: Column(
        children: [
          Container(
              child: Icon(
            _icon,
            color: Colors.indigoAccent,
          )),
          Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                _iconName,
                style: TextStyle(color: Color.fromARGB(255, 109, 108, 108)),
              ))
        ],
      ),
      onPressed: () {},
    ),
  );
}
