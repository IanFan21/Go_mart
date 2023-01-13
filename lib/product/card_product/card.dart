import 'package:flutter/material.dart';
import 'package:gomart/product/detail_produk.dart';
import 'product.dart';

class CadrList extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Kiwi',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Apel',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Alpukat',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Mangga',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Strowberi',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Manggis',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Pepaya',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Jeruk',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Rambutan',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    Product(
        name: 'Jambu Biji',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/splash.png',
        price: 3.5),
    // add more product here
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(products?.length ?? 0, (index) {
          Product product = products[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProduk(product: product),
                ),
              );
              // Handle tap on product
              // navigate to other page
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 150,
                height: 150,
                child: ListView(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(product.image),
                            fit: BoxFit.cover,
                            scale: 0.5,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      product.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(product.description, textAlign: TextAlign.center),
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
