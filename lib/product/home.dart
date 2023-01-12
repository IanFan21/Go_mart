import 'package:flutter/material.dart';
import 'package:gomart/product/card_product/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CadrList(),
    );
  }
}
