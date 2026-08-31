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
      title: 'Explore Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Mundo'),
        ),
        body: const Center(
          child: Text(
            'Olá Flutter - MaterialApp',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}