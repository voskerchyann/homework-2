class Product {
  String name;
  String category;
  double price;

  Product(this.name,this.category,this.price); 
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String,double> result={};

  for (var p in products){
    result[p.category] = (result[p.category] ?? 0) + p.price;
  }
  return result;
}