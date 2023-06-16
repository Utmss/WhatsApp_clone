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
                onPressed: () {
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            )),
                      )
                    ],
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
            PopupMenuButton(
                color: Colors.grey,
                itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 1,
                          child: Text(
                            "New group",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      PopupMenuItem(
                          value: 2,
                          child: Text('New broadcast',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20))),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked devices",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      PopupMenuItem(
                          value: 4,
                          child: Text(
                            'Starred messages',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      PopupMenuItem(
                          value: 5,
                          child: Text(
                            "payments",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      PopupMenuItem(
                          value: 6,
                          child: Text(
                            'Settings',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ])
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
