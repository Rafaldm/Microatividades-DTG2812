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
      title: 'Microatividade 5',
      home: Scaffold(
        appBar: AppBar(title: const Text('Explore Mundo')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 250, height: 250, color: Colors.blue),
              Container(width: 200, height: 200, color: Colors.red),
              Container(width: 150, height: 150, color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
