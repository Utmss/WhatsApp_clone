import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/data/chat_list_web.dart';
import 'package:flutter_application_1/data/cont_info.dart';

class mobile_chat extends StatelessWidget {
  const mobile_chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: chat_bar(),
          ),
          TextField(
              decoration: InputDecoration(
            fillColor: searchBarColor,
            filled: true,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.camera, color: Colors.grey),
                  Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            hintText: "Messages",
            hintStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          )),
        ],
      ),
    );
  }
}
