import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/mobile_screen.dart';
import 'package:whatsapp/Screens/web_screen.dart';
import 'package:whatsapp/colors.dart';

import 'Responsive/Responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveScreen(
        mobilescreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
