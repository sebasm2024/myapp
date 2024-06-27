// lib/models/product.dart

class Product {
  final String id;
  final String name;
  final double price;
  final double stock;
  final String urlImage;
  final String description;
  final int v;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.urlImage,
    required this.description,
    required this.v,
  });

  @override
  String toString() {
    return 'Product{id: $id, name: $name, price: $price, stock: $stock, urlImage: $urlImage, description: $description, v: $v}';
  }
}