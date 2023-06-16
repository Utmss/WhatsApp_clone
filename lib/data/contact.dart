import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/data/cont_info.dart';
import 'package:flutter_application_1/screeens/mobile_chat_screen.dart';

class Contact_list extends StatelessWidget {
  const Contact_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => mobile_chat(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(info[index]['DP'].toString()),
                        radius: 28,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 80,
                )
              ],
            );
          }),
    );
  }
}
