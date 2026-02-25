import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? bgColor, fgColor;
  const Button({
    super.key,
    required this.onPressed,
    required this.text,
    this.bgColor,
    this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontWeight: .w500)),
    );
  }
}
