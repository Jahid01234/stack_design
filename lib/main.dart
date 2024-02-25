import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Design',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

