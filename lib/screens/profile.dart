// lib/screens/profile.dart

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Profile Screen!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

