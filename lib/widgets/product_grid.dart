import 'package:blouse_shop/model/product.dart';
import 'package:blouse_shop/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> product = exampleProducts();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: product.length,
          itemBuilder: (context, index) {
            return ProductCard(product[index]);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3.5,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
          )),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProductScreen(product))),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                    if (wasSynchronouslyLoaded) {
                      return child;
                    }
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Flexible(
                flex: 4,
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 16, height: 1),
                ),
              ),
              Flexible(
                flex: 1,
                child: Text(
                  '\$' + product.price.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: Colors.grey,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
