import 'package:flutter/material.dart';

class ArrowBackIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? color;

  const ArrowBackIcon({super.key, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
      icon: Icon(icon, color: color ?? Colors.black),
      tooltip: 'Back',
    );
  }
}
