// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget mobilescreenLayout;
  final Widget webScreenLayout;
  const ResponsiveScreen({
    Key? key,
    required this.mobilescreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > 900) {
          return webScreenLayout;
        }
        return mobilescreenLayout;
      },
    );
  }
}
