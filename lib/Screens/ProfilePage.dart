import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          selectedIconTheme: const IconThemeData(size: 40),
          currentIndex: 3,
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
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
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
      body: Column(
        children: [
          Container(
            width: 500,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.black)),
                        child: Image.asset(
                          'assets/images/profile-avatar-removebg-preview.png',
                          width: 150,
                          height: 150,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "User Name",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      width: double.infinity,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UserName : Avatar",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Text(
                            "Email : avatar@example.com",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Text(
                            "Phone : +201898379",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepOrange,
                    ),
                    width: double.infinity,
                    child: MaterialButton(
                      height: 50,
                      minWidth: 300,
                      onPressed: () {},
                      child: const Text(
                        "Update Profile",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
