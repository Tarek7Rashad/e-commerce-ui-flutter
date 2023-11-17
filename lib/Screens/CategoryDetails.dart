// import 'dart:js_interop';

import 'package:ecommerce_ui/Models/CategoryModel.dart';
import 'package:ecommerce_ui/Screens/ShoppingCar.dart';
import 'package:ecommerce_ui/widgets/CategoryWidget.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatefulWidget {
  final itemData;

  const CategoryDetails({super.key, this.itemData});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

const List<CategoryModel> models = [
  CategoryModel(name: 'Men', image: 'assets/images/men.png'),
  CategoryModel(
      name: 'Women', image: 'assets/images/women-t-shirt-removebg.png'),
  CategoryModel(name: 'Children', image: 'assets/images/children-removebg.png'),
  CategoryModel(name: 'Shoes', image: 'assets/images/shoes-removebg.png'),
  CategoryModel(
      name: 'Headphones', image: 'assets/images/headphone-removebg.png'),
  CategoryModel(
      name: 'Blenders', image: 'assets/images/Travel_blender-removebg.png'),
  CategoryModel(
      name: 'Electrical', image: 'assets/images/electrical-removebg.png'),
];

class _CategoryDetailsState extends State<CategoryDetails> {
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
                    Navigator.of(context).pushReplacementNamed('HomePage');
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Category",
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
              '${widget.itemData['name']}',
              style: const TextStyle(fontSize: 24),
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
            List.generate(models.length, (index) {
              if (widget.itemData['name'] == models[index].name) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ShoppingCar(itemData: {
                    'image': models[index].image,
                    'name': models[index].name,
                  }),
                ));
              } else {}
              // print('${bestSellings[index].name}');

              Center(
                child: CategoryWidget(categoryModel: models[index]),
              );
            });
          },
          child: const Text('Add To CarT'),
        )
      ]),
    );
  }
}
