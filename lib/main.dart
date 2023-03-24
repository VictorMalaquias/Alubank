import 'package:alubank/screens/home.dart';
import 'package:alubank/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alubank',
      theme: myTheme,
      home: Home(),
    );
  }
}
