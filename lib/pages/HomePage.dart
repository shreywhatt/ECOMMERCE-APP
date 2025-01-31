import 'package:ecomm/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

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
  void navigatedBottomBar (int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: MyBottomNavBar(),


      onTabChange: (index) => navigatedBottomBar(index),
    );
  }
}
