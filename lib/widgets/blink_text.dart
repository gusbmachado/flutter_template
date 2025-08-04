import 'package:flutter/material.dart';

class BlinkingText extends StatefulWidget {
  final String text;
  final TextStyle? styleState1;
  final TextStyle? styleState2;
  final Duration duration;

  const BlinkingText({
    super.key,
    required this.text,
    this.styleState1,
    this.styleState2,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  State<BlinkingText> createState() => _BlinkingTextState();
}

class _BlinkingTextState extends State<BlinkingText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true); // Makes the animation go back and forth
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // Interpolate between the two styles using TextStyle.lerp
        final interpolatedStyle = TextStyle.lerp(
          widget.styleState1,
          widget.styleState2,
          _controller.value,
        );
        return Text(widget.text, style: interpolatedStyle);
      },
    );
  }
}
