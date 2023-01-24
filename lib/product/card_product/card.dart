import 'package:flutter/material.dart';
import 'package:gomart/product/detail_produk.dart';
import 'product.dart';

class CadrList extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Kiwi',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/kiwi.png',
        price: 4.3),
    Product(
        name: 'Apel',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/apel.png',
        price: 2.1),
    Product(
        name: 'Alpukat',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/alpukat.png',
        price: 1.4),
    Product(
        name: 'Mangga',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/mangga.png',
        price: 1.7),
    Product(
        name: 'Strowberi',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/stroberi.png',
        price: 2.7),
    Product(
        name: 'Manggis',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/manggis.png',
        price: 3.0),
    Product(
        name: 'Pepaya',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/pepaya.png',
        price: 1.0),
    Product(
        name: 'Jeruk',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/jeruk.png',
        price: 1.6),
    Product(
        name: 'Rambutan',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/rambutan.png',
        price: 1.4),
    Product(
        name: 'Jambu Biji',
        description: 'Jamin segar kerna baru di petik dari pohonya',
        image: 'assets/jambu_biji.png',
        price: 1.32),
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
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: AspectRatio(
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
            ),
          );
        }),
      ),
    );
  }
}
