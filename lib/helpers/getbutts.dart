import 'package:flutter/material.dart';

class Butt {
  MaterialColor color;
  String buttText;
  String messageText;
  Butt(this.color, this.buttText, this.messageText);
}

/// Returns 4 elevated butts in a list in various colors!
///
List<ElevatedButton> getButts(BuildContext context) {
  const commonName = 'Press Me Daddy';
  List<Butt> buttColors = <Butt>[
    Butt(Colors.red, commonName, 'Joe'),
    Butt(Colors.yellow, commonName, 'Ligma'),
    Butt(Colors.blue, commonName, 'Sugon'),
    Butt(Colors.green, commonName, 'Sugma'),
  ];

  // I used Elevated Button cuz it has a nice look to it...
  // compared to the others :P
  var butts = <ElevatedButton>[];

  // Now we will iterate through the color list to generate the unique buttons
  // which will be visible in the app
  buttColors.asMap().forEach((key, value) {
    butts.add(
      ElevatedButton(
        onPressed: () {
          final text = value.messageText;
          final snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(snackBar);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: value.color,
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 5), // aesthetics 🤌
        ),
        child: Text(
            "${value.buttText}, I am Button ${key + 1}"), // unique identification
      ),
    );
  });
  // Now we will return the buttons list!
  return butts;
}
