import 'package:flutter/material.dart';
import 'package:flutter_template/screens/loading.dart';
import 'styles/global.dart';
import 'screens/home.dart';
import 'screens/profile.dart'; // Import ProfileScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = true;

    void _onLoadingComplete() {
      setState(() {
        isLoading = false;
      });
    }

    return MaterialApp(
      theme: ThemeData(
        primaryColor: ColorPalette.PRIMARY_1,
        scaffoldBackgroundColor: ColorPalette.NEUTRAL_1,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => isLoading ? LoadingScreen(onLoadingComplete: () => _onLoadingComplete()) : HomeScreen(),
        '/profile': (context) => ProfileScreen(), // Define route for ProfileScreen
      },
    );
  }
}

