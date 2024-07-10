import 'package:flutter/material.dart';

void main() {
  runApp(CalmSpaceApp());
}

class CalmSpaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFA3D1E6), // Light blue background color
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50), // Space at the top
            Text(
              'Calm Space',
              style: TextStyle(
                fontFamily: 'Cursive',
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            Text(
              'A Mental Health Companion',
              style: TextStyle(
                fontFamily: 'Cursive',
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 35), // Space between text and image
            ClipOval(
              child: Image.asset(
                'assets/calm.png', // Replace with your image asset
                height: 130,
                width: 130,
                fit: BoxFit.cover, // Ensure the image fits within the circle
              ),
            ),
            SizedBox(height: 35), // Space between image and quote
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '“It’s okay not to be okay. It’s okay to ask for help.\n "It’s okay to take a break”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 30), // Space between quote and button
            ElevatedButton(
              onPressed: () {
                // Define what happens when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF68BBE3), // Button background color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'GET STARTED',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 50), // Space at the bottom
          ],
        ),
      ),
    );
  }
}
