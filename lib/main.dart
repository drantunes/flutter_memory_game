import 'package:flutter/material.dart';
import 'package:flutter_memory_game/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Round 6 Memory',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        primaryColor: const Color(0XFFFF1D87),
      ),
      home: const HomePage(),
    );
  }
}
