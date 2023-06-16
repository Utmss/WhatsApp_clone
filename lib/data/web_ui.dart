import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class webprofilebar extends StatelessWidget {
  const webprofilebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
            color: dividerColor,
          )),
          color: webAppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/RS.jpg'),
            radius: 25,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
