import 'package:ecommerce_ui/Models/BestSellingModel.dart';
import 'package:ecommerce_ui/Models/CategoryModel.dart';
import 'package:ecommerce_ui/Screens/CategoryDetails.dart';
import 'package:ecommerce_ui/Screens/ProductDetails.dart';
import 'package:ecommerce_ui/Widgets/BestSellingWidget.dart';
import 'package:ecommerce_ui/Widgets/CategoryWidget.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final List<CategoryModel> models = const [
    CategoryModel(name: 'Men', image: 'assets/images/men.png'),
    CategoryModel(
        name: 'Women', image: 'assets/images/women-t-shirt-removebg.png'),
    CategoryModel(
        name: 'Children', image: 'assets/images/children-removebg.png'),
    CategoryModel(name: 'Shoes', image: 'assets/images/shoes-removebg.png'),
    CategoryModel(
        name: 'Headphones', image: 'assets/images/headphone-removebg.png'),
    CategoryModel(
        name: 'Blenders', image: 'assets/images/Travel_blender-removebg.png'),
    CategoryModel(
        name: 'Electrical', image: 'assets/images/electrical-removebg.png'),
  ];

  final List<BestSellingModel> bestSellings = const [
    BestSellingModel(
        type: 'Apple Watch S4',
        image: 'assets/images/smartWatch-removebg.png',
        name: "Smart Watch",
        price: 300),
    BestSellingModel(
        type: 'JBL',
        image: 'assets/images/headphone-removebg.png',
        name: "Head Phone",
        price: 359),
    BestSellingModel(
        type: 'Tornado',
        image: 'assets/images/hand-Blender-removebg.png',
        name: "Hand Blender",
        price: 500),
    BestSellingModel(
        type: 'LEGO',
        image: 'assets/images/toyes-removebg.png',
        name: "Toyes",
        price: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedIconTheme: const IconThemeData(size: 40),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          iconSize: 30,
          selectedItemColor: Colors.deepOrange,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('ShoppingPage');
                  },
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
                label: "Shopping"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    print(cards.length);

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
                    Navigator.of(context).pushNamed('profilePage');
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey[400]),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black, width: 0.0001),
                          borderRadius: BorderRadius.circular(50)),
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset(
                  'assets/images/menuBar.png',
                  // width: 50,
                  height: 40,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            //=========================================================================
            height: 120,
            width: 120,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: models.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      // print('${bestSellings[index].name}');
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => CategoryDetails(itemData: {
                          'image': models[index].image,
                          'name': models[index].name,
                        }),
                      ));
                    },
                    child: CategoryWidget(categoryModel: models[index]));
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Best Selling',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
                mainAxisSpacing: 30),
            children: List.generate(bestSellings.length, (index) {
              return InkWell(
                onTap: () {
                  // print('${bestSellings[index].name}');
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ItemDetails(itemData: {
                      'image': bestSellings[index].image,
                      'type': bestSellings[index].name,
                      'price': bestSellings[index].price,
                      'name': bestSellings[index].type
                    }),
                  ));
                },
                child: Center(
                    child: BestSellingWidget(
                        bestSellingModel: bestSellings[index])),
              );
            }),
          )
        ],
      ),
    );
  }
}
