import 'package:flutter/material.dart';
import 'card_product/cart.dart';
import 'card_product/product.dart';

class DetailProduk extends StatelessWidget {
  final Product product;
  final double _kursIDR = 14000;
  DetailProduk({Key? key, required this.product})
      : assert(product != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    if (product == null) {
      return Scaffold(
        body: Center(
          child: Text("No product selected"),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            product.image,
            fit: BoxFit.cover,
            height: 300,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(product.description),
                SizedBox(height: 10),
                Text(
                  'Price: IDR ${(product.price * _kursIDR).toString()}',
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        onPressed: () {
          Cart.addProduct(product);
          Navigator.pushNamed(context, '/cart');
        },
      ),
    );
  }
}
