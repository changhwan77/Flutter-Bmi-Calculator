import 'package:flutter/material.dart';

import '../screens/input_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.BottomText, required this.onTap});

  final String BottomText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: bottomContainerColour,
        height: BottomContainerHeight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            BottomText,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
