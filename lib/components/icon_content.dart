import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  static const iconGap = 15.0;
  static const iconSize = 80.0;
  final IconData iconData;
  final String text;
  final Color? color;

  IconContent({required this.iconData, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: color,
          size: iconSize,
        ),
        SizedBox(height: iconGap),
        Text(
          text,
          style: kLabelTextStyle.copyWith(color: color),
        )
      ],
    );
  }
}
