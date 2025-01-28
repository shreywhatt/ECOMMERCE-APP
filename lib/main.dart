import 'package:ecomm/pages/introPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ecomApp());
}

class ecomApp extends StatelessWidget {
  const ecomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introPage(),
    );
  }
}

