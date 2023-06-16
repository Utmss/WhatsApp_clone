import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/data/contact.dart';

class mobile_layout extends StatelessWidget {
  const mobile_layout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )),
          ],
          bottom: TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Text(
                  'Chats',
                  style: TextStyle(fontSize: 18),
                ),
                Text('Status', style: TextStyle(fontSize: 18)),
                Text("Calls", style: TextStyle(fontSize: 18))
              ]),
        ),
        body: Contact_list(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: Icon(Icons.comment),
        ),
      ),
    );
  }
}
