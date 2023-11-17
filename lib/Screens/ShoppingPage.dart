import 'package:ecommerce_ui/Models/ShoppingItemsModel.dart';
import 'package:ecommerce_ui/Screens/ProductDetails.dart';
import 'package:ecommerce_ui/widgets/ShoppingPageWidget.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({
    super.key,
  });
  final List<ShoppingItemsModel> shoppingItems = const [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          backgroundColor: Colors.grey[300],
          selectedIconTheme: const IconThemeData(size: 40),
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
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('ShoppingPage');
                  },
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
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
                      "Shopping",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/menuBar.png',
                  // width: 50,
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 30),
              children: List.generate(shoppingItems.length, (index) {
                return InkWell(
                  onTap: () {
                    
                    // print('${bestSellings[index].name}');
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ItemDetails(itemData: {
                        'image': shoppingItems[index].image,
                        'type': shoppingItems[index].name,
                        'price': shoppingItems[index].price,
                        'name': shoppingItems[index].type
                      }),
                    ));
                  },
                  child: Center(
                      child: ShoppingWidget(
                          shoppingItemsModel: shoppingItems[index])),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
