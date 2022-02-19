import 'package:blouse_shop/widgets/category_container.dart';
import 'package:blouse_shop/widgets/product_grid.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
        children: [
          Text(
            'Welcome to our blouse shop',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          CategoryContainers(),
          SizedBox(height: 15),
          ProductGrid(),
        ],
      ),
    );
  }
}
