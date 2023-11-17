// import 'dart:js_interop';

import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key, this.itemData});
  final itemData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedIconTheme: const IconThemeData(size: 40),
          currentIndex: 2,
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
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('profilePage');
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
        leadingWidth: 10,
        elevation: 0,

        backgroundColor: Colors.transparent,
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Container(
          width: 500,
          child: Column(
            children: [
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
                    Image.asset(
                      'assets/images/menuBar.png',
                      // width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  trailing:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                  title: const Text('Shoes'),
                  subtitle: const Text('Nike'),
                  leading: Image.asset(
                      'assets/images/nike_shoes-removebg-preview.png'),
                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  trailing:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                  title: const Text('Travel Blender'),
                  subtitle: const Text('Tornado'),
                  leading:
                      Image.asset('assets/images/Travel_blender-removebg.png'),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
