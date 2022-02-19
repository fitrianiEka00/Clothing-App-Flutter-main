import 'package:flutter/material.dart';

class CategoryContainers extends StatefulWidget {
  @override
  _CategoryContainersState createState() => _CategoryContainersState();
}

class _CategoryContainersState extends State<CategoryContainers> {
  int selected = 0;

  List<String> categories = [
    'All',
    'Short Sleeve',
    'Long Sleeve',
    'High Neck',
    'On Sale'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            child:
                CategoryContainer(categories[index], index == selected, index),
            onTap: () {
              setState(() {
                selected = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final String label;
  final bool isSelected;
  final int index;

  const CategoryContainer(this.label, this.isSelected, this.index);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 15),
      duration: Duration(milliseconds: 200),
      height: 30,
      width: index == 0 ? 75 : 130,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
