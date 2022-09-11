import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  
  const CategoryItem({Key? key}) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
   var textt ;

  @override
  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200),
              child: Image.asset("assets/images/coding.png"),
        ),
        SizedBox(height: 10),
        Text(
          "Coding",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}