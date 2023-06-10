import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class websearchbar extends StatelessWidget {
  const websearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor))),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            hintStyle: TextStyle(fontSize: 15),
            hintText: "Search or Start new Chats",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
