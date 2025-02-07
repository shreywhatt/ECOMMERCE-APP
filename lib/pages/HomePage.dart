import 'package:ecomm/components/bottom_nav_bar.dart';
import 'package:ecomm/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // this selected index is to control the bottom nav bar

  int selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar (int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> pages = [

    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu,
                  color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(),

      body: pages[
        selectedIndex
      ],
    );
  }
}
