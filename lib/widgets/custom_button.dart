import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      // You can customize button styles here
      style: ElevatedButton.styleFrom(
        // Add your preferred button styles (e.g., colors, padding, etc.)
        primary: Colors.blue, // Change the button color as needed
      ),
    );
  }
}
