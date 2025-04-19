// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, body_might_complete_normally_nullable, unused_field, must_be_immutable, prefer_final_fields, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:store/UI/CartPage.dart';
import 'package:store/Widgets/MyDrawer.dart';

import 'package:store/Widgets/MyNavBar.dart';
import 'package:store/UI/ShopPage.dart';

class DetailedHomePage extends StatefulWidget {
  DetailedHomePage({super.key});

  @override
  State<DetailedHomePage> createState() => _DetailedHomePageState();
}

class _DetailedHomePageState extends State<DetailedHomePage> {
  void onChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  List Pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
      appBar: AppBar(), // can be remove
      bottomNavigationBar: MyNavBar(
        onTabChange: (pageIndex) => onChange(pageIndex),
      ),
      body: Pages[_selectedIndex],
    );
  }
}
