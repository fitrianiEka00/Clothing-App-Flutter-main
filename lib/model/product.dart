class Product {
  late String title;
  late int price;
  late String description;
  late String image;

  Product({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });
}

List<Product> exampleProducts() {
  var result = <Product>[];

  result.add(Product(
    title: 'Flower Blouse with purple and blue',
    price: 48,
    description:
        'Modern blouse and shirt sewing patterns for women including on-trend tunic patterns, over-shirts, boyfriend shirts and tabards for work or leisure.',
    image: 'images/flower.jpg',
  ));

  result.add(Product(
    title: 'Orange Blouse for Spring season',
    price: 37,
    description:
        'Modern blouse and shirt sewing patterns for women including on-trend tunic patterns, over-shirts, boyfriend shirts and tabards for work or leisure.',
    image: 'images/orange.jpg',
  ));

  result.add(Product(
    title: 'Flower blouse with neklace',
    price: 65,
    description:
        'Modern blouse and shirt sewing patterns for women including on-trend tunic patterns, over-shirts, boyfriend shirts and tabards for work or leisure.',
    image: 'images/necklace.jpg',
  ));

  result.add(Product(
    title: 'Blouse with special pattern',
    price: 29,
    description:
        'Modern blouse and shirt sewing patterns for women including on-trend tunic patterns, over-shirts, boyfriend shirts and tabards for work or leisure.',
    image: 'images/pattern.jpg',
  ));

  return result;
}
