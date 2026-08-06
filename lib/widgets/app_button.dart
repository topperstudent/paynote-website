import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;
  final IconData? icon;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return isPrimary
          ? ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text),
      )
          : OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text),
      );
    }
    return isPrimary
        ? ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    )
        : OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}