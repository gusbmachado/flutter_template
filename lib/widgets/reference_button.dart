import 'package:flutter/material.dart';
import '../styles/global.dart'; // Import global styles

class ReferenceButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  // Constructor with text and onPressed function
  ReferenceButton({required this.text, required this.onPressed, this.color = ColorPalette.PRIMARY_1});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color, // Button color
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Nunito',
        ),
      ),
    );
  }
}

