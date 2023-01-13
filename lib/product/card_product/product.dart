class Product {
  final String name;
  final String description;
  final String image;
  final double price;
  int quantity;

  Product(
      {required this.name,
      required this.description,
      required this.image,
      required this.price,
      this.quantity = 1});
}
