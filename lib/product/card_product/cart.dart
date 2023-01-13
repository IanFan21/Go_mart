import 'product.dart';

class Cart {
  static List<Product> _products = [];

  static void addProduct(Product product) {
    _products.add(product);
  }

  static List<Product> get products => _products;
}
