import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/cont_info.dart';
import 'package:flutter_application_1/data/message_card.dart';
import 'package:flutter_application_1/data/sender_mesage.dart';

class chat_bar extends StatelessWidget {
  const chat_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isme'] == true) {
          return message_card(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }

        return sender_message(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
    );
  }
}
