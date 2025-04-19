// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, must_be_immutable, prefer_interpolation_to_compose_strings, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/Widgets/BoldText.dart';
import 'package:store/Widgets/LightText.dart';
import 'package:store/Model%20Classes/Shoe.dart';
import 'package:store/Model%20Classes/Shop.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Consumer<Shop>(
              builder: (context, value, child) => Column(
                    children: [
                      Container(
                        height: 60,
                        width: 400,
                        child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(fontSize: 20)),
                            )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "i wanna be alone alone with you\n Alone with you does that make sense?",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Hot Sales 🔥",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "See All   ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4, // will update late
                            itemBuilder: (context, index) {
                              // Shoe shoe = new Shoe(
                              //     Id: "1",
                              //     Name: "Nike Joggers",
                              //     ImagePath: "1.png",
                              //     Price: "840",
                              //     Desc: "Best Nike Joggers all over the state");

                              Shoe shoe = value.getAllShoes()[index];

                              return Stack(children: [
                                // Image Container
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 500,
                                  width: 340,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/" + shoe.ImagePath)),
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(20)),
                                ),

                                // Name Container
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[600],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  height: 100,
                                  width: 340,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BoldText(
                                          text: shoe.Name,
                                          color: Colors.white,
                                        ),
                                        LightText(
                                          text: shoe.Desc,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                // Price Container

                                Container(
                                  margin: EdgeInsets.only(top: 400),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  height: 80,
                                  width: 275,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            BoldText(
                                              text: "\$ ",
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            BoldText(
                                              text: shoe.Price,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Add To Cart Container
                                // Add to Cart Functionality
                                GestureDetector(
                                  onTap: () {
                                    value.AddToCart(shoe);
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.black,
                                          content: Transform.translate(
                                            offset: Offset(30, 5),
                                            child: SelectableText(
                                                style: TextStyle(
                                                    color: Colors.white),
                                                "Added to cart successfully"),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 260, top: 420),
                                    height: 80,
                                    width: 80,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[600],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        )),
                                  ),
                                ),
                                //
                              ]);
                            }),
                      ),
                    ],
                  ))),
    );
  }
}
