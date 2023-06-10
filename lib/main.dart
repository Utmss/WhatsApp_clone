import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/responsive_layout.dart';
import 'package:flutter_application_1/screeens/mobile_layout.dart';
import 'package:flutter_application_1/screeens/web_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var webscreenlayout;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const Responsive(
        mobile_layout: mobile_layout(),
        web_layout: web_layout(),
      ),
    );
  }
}
