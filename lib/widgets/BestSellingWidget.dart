import 'package:flutter/material.dart';
import 'package:ecommerce_ui/Models/BestSellingModel.dart';

class BestSellingWidget extends StatelessWidget {
  const BestSellingWidget({super.key, required this.bestSellingModel});
  final BestSellingModel bestSellingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 300,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Image.asset(
              bestSellingModel.image,
              height: 500,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bestSellingModel.type,
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              bestSellingModel.name,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${bestSellingModel.price}\$",
              style: const TextStyle(fontSize: 24, color: Colors.deepOrange),
            ),
          ],
        )
      ],
    );
  }
}
