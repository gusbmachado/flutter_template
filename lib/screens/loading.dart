import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/styles/global.dart';
import 'package:flutter_template/widgets/blink_text.dart';

class LoadingScreen extends StatefulWidget {
  final void Function()? onLoadingComplete;

  const LoadingScreen({Key? key, required this.onLoadingComplete}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(); // Loop animation

    // Simulate loading process and navigate to home screen after 5 seconds
    Timer(Duration(seconds: 5), () {
      widget.onLoadingComplete!();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 120, bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated logo
              Stack(
              alignment: Alignment.topCenter,
              children: [
                // Logo
                Column(
                  children: [
                    Image.asset(
                    'assets/images/logo_text.png', // Replace with your logo
                    width: MediaQuery.of(context).size.width - 100,
                    ),
                    SizedBox(height: 40),
                    Column(
                      children: [
                        Text(
                          "Flutter Template",
                          style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: ColorPalette.SYSTEM_6,
                          ),
                        ),
                        Text(
                          "your starting point",
                          style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: ColorPalette.PRIMARY_6,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
              ),
              Spacer(),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(ColorPalette.SYSTEM_6),
                strokeWidth: 3,
              ),
              Spacer(),
              // Powered by VIASOFT
              BlinkingText(
                text: "Powered by",
                styleState1: TextStyle(color: ColorPalette.PRIMARY_6, fontSize: 20),
                styleState2: TextStyle(color: ColorPalette.PRIMARY_6.withOpacity(0.5), fontSize: 20),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/logo_viasoft.png', // Replace with your logo
                width: 180,
                height: 19,
              ),
            ],
          ),
        ),
      ),
    );
  }
}