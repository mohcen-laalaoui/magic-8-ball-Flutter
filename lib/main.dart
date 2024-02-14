import 'package:flutter/material.dart';
import 'dart:math'; // Import the dart:math library for generating random numbers

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key}); // Add a key parameter to the constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade500,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: const Center(
            child: Text(
              "Ask me anything",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body:
            const Ball(), // Display the Ball widget as the body of the Scaffold
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key}); // Add a key parameter to the constructor

  @override
  State<Ball> createState() =>
      _BallState(); // Create the state for the Ball widget
}

class _BallState extends State<Ball> {
  int ballNumbers = 0; // Initialize a variable to store the ball number

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                // Function to handle button press
                print("I got clicked"); // Print a message to the console
                setState(() {
                  // Update the UI
                  print(Random().nextInt(4) +
                      1); // Print a random number between 1 and 4
                  ballNumbers = Random().nextInt(4) +
                      1; // Generate a random number between 1 and 4 and store it in ballNumbers
                });
              },
              child: Image.asset(
                  "Images/ball$ballNumbers.png"), // Display the image corresponding to the current ball number
            ),
          ),
        ],
      ),
    );
  }
}
