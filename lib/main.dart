import 'package:flutter/material.dart';
import 'package:portfolio/navscreen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavScreen(),
      title: 'MSLA',
      debugShowCheckedModeBanner: false,
    );
  }
}
