import 'package:flutter/material.dart';

void main() {
  runApp(const LGDemoApp());
}

class LGDemoApp extends StatelessWidget {
  const LGDemoApp({super.key});

  /// Returns 4 butts in various colors!
  ///
  List<ElevatedButton> getButts() {
    List<MaterialColor> buttColors = <MaterialColor>[
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.pink
    ];
    var butts = <ElevatedButton>[];
    for (var buttColor in buttColors) {
      butts.add(
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: buttColor,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          child: const Text('Press Me!'),
        ),
      );
    }
    return butts;
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: getButts(),
          ),
        ),
      ),
    );
  }
}
