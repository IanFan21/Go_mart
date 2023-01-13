import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gomart/product/home.dart';
import 'package:gomart/product/profile.dart';
import 'package:gomart/product/transaksi.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);
  final String title;
  _DashboardState createState() => _DashboardState();
}

int currentIndex = 0;

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Profile(title: 'profile'),
      ),
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Transaksi(title: 'transaksi')),
    ];
    return Scaffold(
        body: widgets[currentIndex],
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.dashboard, title: 'dashboard'),
            TabItem(icon: Icons.account_circle, title: 'profile'),
            TabItem(icon: Icons.shopping_cart, title: 'transaksi'),
          ],
          onTap: (int i) => setState(() {
            currentIndex = i;
          }),
        ));
  }
}
