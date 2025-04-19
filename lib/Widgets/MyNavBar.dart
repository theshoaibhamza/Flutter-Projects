// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavBar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GNav(
            onTabChange: (value) => onTabChange!(value),
            tabBackgroundColor: Colors.grey.shade400,
            color: Colors.grey,
            tabBorderRadius: 20,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            tabs: [
              GButton(
                icon: Icons.home,
                text: ' Shop',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: ' Cart',
              ),
            ]),
      ),
    );
  }
}
