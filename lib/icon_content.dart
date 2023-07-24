
import 'package:flutter/material.dart';

import 'my_color.dart';

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
          size: 80.0,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(fontSize: 18.0, color: MyColor.disable),
        )
      ],
    );
  }
}
