
import 'package:flutter/material.dart';

import 'my_color.dart';

const iconSize = 80.0;
const fontSize = 18.0;
const iconGap = 15.0;

class IconContent extends StatelessWidget {
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
          style: TextStyle(fontSize: fontSize, color: MyColor.disable),
        )
      ],
    );
  }
}
