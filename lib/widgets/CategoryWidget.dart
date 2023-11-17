import 'package:ecommerce_ui/Models/CategoryModel.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(15),
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.grey[300],
          ),
          child: Image.asset(
            categoryModel.image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            categoryModel.name,
            style: const TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
