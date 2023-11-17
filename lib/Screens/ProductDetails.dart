// import 'dart:js_interop';

import 'package:ecommerce_ui/Models/ShoppingItemsModel.dart';
import 'package:ecommerce_ui/Screens/ShoppingCar.dart';
import 'package:ecommerce_ui/widgets/ShoppingPageWidget.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final itemData;

  const ItemDetails({super.key, this.itemData});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

const List<ShoppingItemsModel> shoppingItems = [
  ShoppingItemsModel(
      type: 'Apple Watch S4',
      image: 'assets/images/smartWatch-removebg.png',
      name: "Smart Watch",
      price: 300),
  ShoppingItemsModel(
      type: 'JBL',
      image: 'assets/images/headphone-removebg.png',
      name: "Head Phone",
      price: 359),
  ShoppingItemsModel(
      type: 'Tornado',
      image: 'assets/images/hand-Blender-removebg.png',
      name: "Hand Blender",
      price: 500),
  ShoppingItemsModel(
      type: 'LEGO',
      image: 'assets/images/toyes-removebg.png',
      name: "Toyes",
      price: 150),
  ShoppingItemsModel(
      type: 'Jacket',
      image: 'assets/images/men.png',
      name: "Town Team",
      price: 250),
  ShoppingItemsModel(
      type: 'ZARA',
      image: 'assets/images/women-t-shirt-removebg.png',
      name: "T-shirt ",
      price: 100),
  ShoppingItemsModel(
      type: 'Shoes',
      image: 'assets/images/nike_shoes-removebg-preview.png',
      name: "Nike",
      price: 1000),
  ShoppingItemsModel(
      type: 'Iron',
      image: 'assets/images/electrical-removebg.png',
      name: "Tornado",
      price: 150),
];
List cards = [];

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedIconTheme: const IconThemeData(size: 40),
          currentIndex: 1,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          iconSize: 30,
          selectedItemColor: Colors.deepOrange,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('HomePage');
                },
                child: const Icon(
                  Icons.home_outlined,
                ),
              ),
              label: "Home",
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Shopping"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('CartPage');
                  },
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('profilePage');
                  },
                  child: const Icon(
                    Icons.person_2_outlined,
                  ),
                ),
                label: "Profile"),
          ]),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: const Text(''),
        centerTitle: true,
        leadingWidth: 10,
        elevation: 0,

        backgroundColor: Colors.transparent,
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  color: Colors.deepOrange,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Product",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                  Text(" Details",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          color: Colors.deepOrange))
                ],
              ),
              Image.asset(
                'assets/images/menuBar.png',
                // width: 50,
                height: 50,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 50),
          width: double.infinity,
          color: Colors.deepOrange,
          child: Column(
            children: [
              Image.asset(
                widget.itemData['image'],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.circle_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.circle_outlined),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Text(
              '${widget.itemData['type']}',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
            ),
            Text(
              '${widget.itemData['name']}',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              '${widget.itemData['price']}\$',
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Colors :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                ),
                const Text(
                  '  Red',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 16, 15, 15)),
                ),
                const Text(
                  '  Deep Orange',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        MaterialButton(
          textColor: Colors.white,
          color: Colors.black,
          height: 50,
          minWidth: 100,
          onPressed: () {
            List.generate(shoppingItems.length, (index) {
              if (widget.itemData['name'] == shoppingItems[index].type) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ShoppingCar(itemData: {
                    'image': shoppingItems[index].image,
                    'name': shoppingItems[index].name,
                    'price': shoppingItems[index].price,
                    'type': shoppingItems[index].type
                  }),
                ));
              } else {}
              // print('${bestSellings[index].name}');

              Center(
                child: ShoppingWidget(shoppingItemsModel: shoppingItems[index]),
              );
            });
          },
          child: const Text('Add To CarT'),
        )
      ]),
    );
  }
}
