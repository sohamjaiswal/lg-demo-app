// This code has been written as a way to apply for a GSoC "intern" position
// under the Liquid Galaxy Pre-Selection Stage 2 requirements
// It has been over-commented on to display understanding of the code, such
// commenting may not be there in production environments
import 'package:flutter/material.dart';
import 'helpers/getbuttons.dart';

void main() {
  // App not started here to increase readability, modularity etc
  runApp(const LGDemoApp());
}

class LGDemoApp extends StatelessWidget {
  const LGDemoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('LG Demo App'),
      ),
      body: Center(
        child: Column(
            // Arranging the buttons in a column
            mainAxisAlignment: MainAxisAlignment.center, // For aesthetics
            children: [
              // Loading Logo Image from the LG site!
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/loadingloader.gif',
                image:
                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzI4JzY6oUy-dQaiW-HLmn5NQ7qiw7NUOoK-2cDU9cI6JwhPrNv0EkCacuKWFViEgXYrCFzlbCtHZQffY6a73j6_ATFjfeU7r6OxXxN5K8sGjfOlp3vvd6eCXZrozlu34fUG5_cKHmzZWa4axb-vJRKjLr2tryz0Zw30gTv3S0ET57xsCiD25WMPn3wA/s800/LIQUIDGALAXYLOGO.png',
              ),
              // Calling a modular function to generate dummy buttons
              // and spreading it
              ...getButtons(context),
            ]),
      ),
    );
  }
}
