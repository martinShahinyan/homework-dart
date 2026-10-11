class Product {
  String name;
  String category;
  double price;
  Product(this.name, this.category, this.price);
}
Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> result = {};
  for (var product in products) {
    result.update(
      product.category,
      (existingValue) => existingValue + product.price,
      ifAbsent: () => product.price,
    );
  }
  return result;
}
void main() {
  List<Product> items = [
    Product('Khndzor', 'Mrgner', 500),
    Product('Banan', 'Mrgner', 400),
    Product('Kat', 'Katnamterq', 600),
  ];
  print(totalByCategory(items));
}
