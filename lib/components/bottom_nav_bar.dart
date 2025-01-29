import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,),
      child: GNav(
        color: Colors.black,
          activeColor: Colors.black,
          tabActiveBorder: Border.all(color: Colors.black),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 12,

          tabs: const [
            GButton(
              icon: Icons.home,

              text: 'SHOP',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'CART',
            ),
          ],
      ) ,
    );
  }
}

