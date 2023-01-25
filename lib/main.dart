// This code has been written as a way to apply for a GSoC "intern" position
// under the Liquid Galaxy Pre-Selection Stage 2 requirements

// It has been over-commented on to display understanding of the code, such
// commenting may not be there in production environments

// Weird nomenclature has been used to prove that the code has not been
// generated using ai tools AND/OR copied from anywhere, although it still
// is not enough to prove anything... *The times we live in... 🤷‍♂️*

import 'package:flutter/material.dart';

import 'helpers/helper.dart';

void main() {
  // App not started here to increase readability, modularity etc
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
          title: const Text('LG Demo App'),
        ),
        body: Center(
          child: Column(
            // Arranging the buttons in a column
            mainAxisAlignment: MainAxisAlignment.center, // For aesthetics
            children:
                // Calling a modular function to generate dummy buttons
                getButts(),
          ),
        ),
      ),
    );
  }
}
