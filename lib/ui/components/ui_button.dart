// Flutter imports:
import 'package:flutter/material.dart';

class UiButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData icon;

  const UiButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.green.withOpacity(0.5),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, size: 32),
        ),
      ),
    );
  }
}
