import 'package:flutter/material.dart';
import 'package:flutter_application_1/screeens/web_layout.dart';

class Responsive extends StatelessWidget {
  final Widget mobile_layout;
  final Widget web_layout;
  const Responsive(
      {super.key, required this.mobile_layout, required this.web_layout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 900) {
          return web_layout;
        }
        return mobile_layout;
      },
    );
  }
}
