import 'package:flutter/material.dart';
import '../styles/global.dart';
import '../widgets/reference_button.dart'; // Import the ReferenceButton

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Native App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, world!',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 20),
            ReferenceButton(
              text: 'Go to Profile', // Text for the button
              onPressed: () {
                Navigator.pushNamed(context, '/profile'); // Action on button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

