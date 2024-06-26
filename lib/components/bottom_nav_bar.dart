import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
            mainAxisAlignment: MainAxisAlignment.center,
            color: Colors.grey.shade400,
            activeColor: Colors.grey.shade800,
            tabActiveBorder: Border.all(color: Colors.grey.shade100),
            tabBackgroundColor: Colors.white,
            tabBorderRadius: 16,
            onTabChange: (value)=>onTabChange!(value),
            tabs: [
          GButton(icon: Icons.home, text: "Shop",),
          GButton(icon: Icons.shopping_bag_rounded, text: "Cart",)
        ]),
      ),
    );
  }
}
