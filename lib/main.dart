import 'package:ecommerce_ui/Screens/Cart.dart';
import 'package:ecommerce_ui/Screens/HomePageView.dart';
import 'package:ecommerce_ui/Screens/ProfilePage.dart';
import 'package:ecommerce_ui/Screens/ShoppingCar.dart';
import 'package:ecommerce_ui/Screens/ShoppingPage.dart';
import 'package:ecommerce_ui/Screens/ProductDetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceUi());
}

class EcommerceUi extends StatelessWidget {
  const EcommerceUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePageView(),
      routes: {
        "HomePage": (context) => const HomePageView(),
        "ShoppingPage": (context) => const ShoppingPage(),
        "ShoppingCar": (context) => const ShoppingCar(),
        "itemDetails": (context) => const ItemDetails(),
        "profilePage": (context) => const ProfilePage(),
        "CartPage": (context) => const Cart(),
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(toolbarHeight: 20),
        textTheme: const TextTheme(
            // bodyLarge: TextStyle(fontSize: 24),
            // bodyMedium: TextStyle(fontSize: 20,),
            // bodySmall: TextStyle(fontSize: 14),
            ),
      ),
    );
  }
}
