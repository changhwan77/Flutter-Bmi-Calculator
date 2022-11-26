import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;

  RoundIconButton({required this.onPress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
      backgroundColor: Color(0xFF4C4F5E),
      onPressed: onPress,
    );
  }
}
