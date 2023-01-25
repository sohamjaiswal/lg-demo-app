import 'package:flutter/material.dart';

class LgButton {
  MaterialColor color;
  String buttText;
  String messageText;
  LgButton(this.color, this.buttText, this.messageText);
}

/// Returns 4 elevated butts in a list in various colors!
///
List<ElevatedButton> getButtons(BuildContext context) {
  const commonName = 'Press Me!';
  List<LgButton> buttColors = <LgButton>[
    LgButton(Colors.red, commonName, 'I am number 1'),
    LgButton(Colors.amber, commonName, 'I am numero duo'),
    LgButton(Colors.blue, commonName, 'Third'),
    LgButton(Colors.green, commonName, 'Fourth'),
  ];

  // I used Elevated Button cuz it has a nice look to it...
  // compared to the others :P
  var buttons = <ElevatedButton>[];

  // Now we will iterate through the color list to generate the unique buttons
  // which will be visible in the app
  buttColors.asMap().forEach((key, value) {
    buttons.add(
      ElevatedButton(
        onPressed: () {
          final text = value.messageText;
          final snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar() // removes previous snackbar if present
            ..showSnackBar(snackBar); // shows new snackbar with message
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: value.color,
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 5), // aesthetics 🤌
        ),
        child: Text(
            "${value.buttText} I am Button ${key + 1}"), // unique identification
      ),
    );
  });
  // Now we will return the buttons list!
  return buttons;
}
