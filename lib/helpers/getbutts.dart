import 'package:flutter/material.dart';

/// Returns 4 elevated butts in a list in various colors!
///
List<ElevatedButton> getButts() {
  // As we just need 4 buttons, with only the background color changing,
  // we can use a list with the data that varies (in this case the bgColor)
  // Here I have also type constrained the variable as a good practice
  List<MaterialColor> buttColors = <MaterialColor>[
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
  ];

  // I used Elevated Button cuz it has a nice look to it...
  // compared to the others :P

  var butts = <ElevatedButton>[];

  // Now we will iterate through the color list to generate the unique buttons
  // which will be visible in the app

  buttColors.asMap().forEach((key, value) {
    butts.add(
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: value,
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 5), // aesthetics 🤌
        ),
        child:
            Text("Press Me! I am Button ${key + 1}"), // unique identification
      ),
    );
  });

  // Now we will return the buttons list!
  return butts;
}
// 42 line perfection 🤌