// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/Widgets/BoldText.dart';
import 'package:store/Model%20Classes/Shoe.dart';
import 'package:store/Model%20Classes/Shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer<Shop>(
            builder: (context, value, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BoldText(
                  text: "Cart ",
                  size: 40,
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: value.GetUserCart().length,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.GetUserCart()[index];
                          return Expanded(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 80,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[600],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      height: 90,
                                      width: 90,
                                      child: Image.asset(
                                          "images/" + shoe.ImagePath)),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  BoldText(
                                    text: shoe.Name,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      value.RemoveFromCart(shoe);
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          )),
    );
  }
}
