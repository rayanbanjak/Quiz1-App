import 'package:flutter/material.dart';
import 'package:rayan_banjak/TeaCoffee.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Teacoffee(),
          
        ),
      ),
    );
  }
}
