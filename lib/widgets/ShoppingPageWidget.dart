import 'package:ecommerce_ui/Models/ShoppingItemsModel.dart';
import 'package:flutter/material.dart';

class ShoppingWidget extends StatelessWidget {
  const ShoppingWidget({super.key, required this.shoppingItemsModel});
  final ShoppingItemsModel shoppingItemsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
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
                shoppingItemsModel.image,
                height: 500,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoppingItemsModel.type,
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                shoppingItemsModel.name,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                "${shoppingItemsModel.price}\$",
                style: const TextStyle(fontSize: 24, color: Colors.deepOrange),
              ),
            ],
          )
        ],
      ),
    );
  }
}
