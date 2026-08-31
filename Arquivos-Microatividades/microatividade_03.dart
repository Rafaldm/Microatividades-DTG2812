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
      title: 'Microatividade 3',
      home: Scaffold(
        appBar: AppBar(title: const Text('Explore Mundo')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.call, size: 40),
                  SizedBox(height: 8),
                  Text('Call'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.directions, size: 40),
                  SizedBox(height: 8),
                  Text('Route'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.share, size: 40),
                  SizedBox(height: 8),
                  Text('Share'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
