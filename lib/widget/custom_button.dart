import 'package:flash_chat/const/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.color,
      required this.buttonTextStyles});
  final VoidCallback onPressed;
  final String title;
  final Color color;
  final TextStyle buttonTextStyles;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: buttonTextStyles,
        ),
      ),
    );
  }
}
