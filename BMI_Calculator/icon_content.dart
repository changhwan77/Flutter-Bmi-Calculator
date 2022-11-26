import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class selectGender extends StatelessWidget {
  final String name;
  final IconData icondataName;

  selectGender({required this.name, required this.icondataName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icondataName,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
