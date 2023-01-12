import 'package:flutter/material.dart';
import 'product.dart';

class CadrList extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Product 1',
        description: 'Product Description 1',
        image: 'assets/splash.png'),
    Product(
        name: 'Product 2',
        description: 'Product Description 2',
        image: 'assets/splash.png'),
    Product(
        name: 'Product 3',
        description: 'Product Description 3',
        image: 'assets/splash.png'),
    Product(
        name: 'Product 4',
        description: 'Product Description 4',
        image: 'assets/splash.png'),
    Product(
        name: 'Product 5',
        description: 'Product Description 5',
        image: 'assets/splash.png'),
    // add more product here
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(products.length, (index) {
          Product product = products[index];
          return InkWell(
            onTap: () {
              // Handle tap on product
              // navigate to other page
            },
            child: Card(
              child: Container(
                width: 150,
                height: 150,
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(product.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(product.name),
                    Text(product.description),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
