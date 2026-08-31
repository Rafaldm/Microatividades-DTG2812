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
        appBar: AppBar(title: const Text('Explore Mundo')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [Icon(Icons.call), Text('Call')],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [Icon(Icons.directions), Text('Route')],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [Icon(Icons.share), Text('Share')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
