import 'package:flutter/material.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({Key? key, required this.title}) : super(key: key);
  final String title;
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Text(
        'Favorite Page',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
