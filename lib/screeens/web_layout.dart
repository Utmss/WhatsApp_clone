import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/contact.dart';
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
            child: Center(
              child: Text('Chats are here !'),
            ),
          )
        ],
      ),
    );
  }
}
