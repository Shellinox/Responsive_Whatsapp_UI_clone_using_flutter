import 'package:flutter/material.dart';
import 'package:whatsappresposiveui/utils/colors.dart';
import 'package:whatsappresposiveui/responsive/responsive_layout.dart';
import 'package:whatsappresposiveui/screens/mobile_sceen_layout.dart';
import 'package:whatsappresposiveui/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MoblieScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
