import 'package:flutter/material.dart';

import '../constants/my_color.dart';
import '../constants/typography.dart';

class BottomButton extends StatelessWidget {

  static const bottomContainerHeight = 80.0;

  final Function() onClick;
  final String text;

  BottomButton({required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: bottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        color: MyColor.secondary,
        child: Center(
          child: Text(
            text,
            style: kLabelTextStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}