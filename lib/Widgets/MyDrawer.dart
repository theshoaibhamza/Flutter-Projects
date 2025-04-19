// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, body_might_complete_normally_nullable, unused_field, must_be_immutable, prefer_final_fields, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:store/UI/HomePage.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            width: 200,
            child: Image.asset(
              "images/logo.png",
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.grey,
                  content: SelectableText(
                      style: TextStyle(color: Colors.white),
                      "This is top secret information stored by shoaib hamza."),
                );
              },
            ),
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                "Info",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Spacer(),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => HomePage()));
              },
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
