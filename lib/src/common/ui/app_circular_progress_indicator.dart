import 'package:flutter/material.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final Color spinnerColor;
  final Color? backgroundColor;

  AppCircularProgressIndicator(
      {required this.spinnerColor, this.backgroundColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: backgroundColor,
        child: Center(
          child: CircularProgressIndicator(
            color: spinnerColor,
          ),
        ),
      ),
    );
  }
}
