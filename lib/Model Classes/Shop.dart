// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:store/Model%20Classes/Shoe.dart';

class Shop extends ChangeNotifier {
  // created a list of available products
  List<Shoe> Shoes = [
    Shoe(
        Id: "1",
        Name: "Nike Joggers",
        ImagePath: "1.png",
        Price: "790",
        Desc: "Best Nike Joggers all over the state"),
    Shoe(
        Id: "2",
        Name: "Nike Joggers",
        ImagePath: "2.png",
        Price: "540",
        Desc: "Best Nike Joggers all over the state"),
    Shoe(
        Id: "3",
        Name: "Nike Joggers",
        ImagePath: "3.png",
        Price: "350",
        Desc: "Best Nike Joggers all over the state"),
    Shoe(
        Id: "4",
        Name: "Nike Joggers",
        ImagePath: "4.png",
        Price: "320",
        Desc: "Best Nike Joggers all over the state"),
  ];

  List<Shoe> getAllShoes() {
    return Shoes;
  }

  List<Shoe> UserCart = [];

  // this will return the cart whenever needed
  List<Shoe> GetUserCart() {
    return UserCart;
  }

  // method to add product when user add to cart
  void AddToCart(Shoe shoe) {
    UserCart.add(shoe);
    notifyListeners();
  }

  // method if user delete the product from the cart

  void RemoveFromCart(Shoe shoe) {
    UserCart.remove(shoe);
    notifyListeners();
  }
}
