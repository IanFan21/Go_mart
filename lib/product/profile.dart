import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.title}) : super(key: key);
  final String title;
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
          child: Text(
        'Favorite Page',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
