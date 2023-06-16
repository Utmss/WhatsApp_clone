import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/data/chat_list_web.dart';
import 'package:flutter_application_1/data/contact.dart';
import 'package:flutter_application_1/data/web_chat.dart';
import 'package:flutter_application_1/data/web_search_bar.dart';
import 'package:flutter_application_1/data/web_ui.dart';

class web_layout extends StatelessWidget {
  const web_layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  webprofilebar(),
                  websearchbar(),
                  Contact_list(),
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                children: [
                  web_chat(),
                  Expanded(
                    child: chat_bar(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                          color: dividerColor,
                        )),
                        color: chatBarMessage),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            )),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor: searchBarColor,
                                    filled: true,
                                    hintText: "Message",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none)),
                                    contentPadding: EdgeInsets.only(left: 16),
                                    hintStyle: TextStyle(fontSize: 20)),
                              )),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
