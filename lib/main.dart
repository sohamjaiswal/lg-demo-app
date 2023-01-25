import 'package:flutter/material.dart';

void main() {
  runApp(const LGDemoApp());
}

class LGDemoApp extends StatelessWidget {
  const LGDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('LGDemoApp'),
      ),
      body: Container(
        child: const Text('Hello World 😀'),
      ),
    ));
  }
}
