import 'package:flutter/material.dart';

import 'card_product/cart.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({Key? key, required this.title}) : super(key: key);
  final String title;
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  final double _kursIDR = 14000;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/cart': (context) => Transaksi(
              title: 'transaksi',
            ),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transaksi'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: Cart.products.length,
                itemBuilder: (context, index) {
                  final product = Cart.products[index];
                  return ListTile(
                    leading: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(product.name),
                    subtitle: Text(product.description),
                    trailing: Text('${product.quantity}'),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Total Harga (IDR):',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'IDR ${(_calculateTotalPrice() * _kursIDR).toString()}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Total Item (1KG):',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${_calculateTotalQuantity()} KG',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double _calculateTotalPrice() {
  return Cart.products
      .fold(0, (previousValue, element) => previousValue + element.price);
}

int _calculateTotalQuantity() {
  if (Cart.products.isEmpty) return 0;
  return Cart.products
      .fold(0, (previousValue, element) => previousValue + element.quantity);
}
