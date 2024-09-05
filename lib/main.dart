import 'package:flutter/material.dart';
import 'styles/global.dart';
import 'screens/home.dart';
import 'screens/profile.dart'; // Import ProfileScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: ColorPalette.PRIMARY_1,
        scaffoldBackgroundColor: ColorPalette.NEUTRAL_1,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(), // Define route for ProfileScreen
      },
    );
  }
}

