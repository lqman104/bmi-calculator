import 'dart:async';

import 'package:flutter/material.dart';

import '../constants/my_color.dart';

class RoundIconButton extends StatefulWidget {
  final IconData icon;
  final Function()? onClick;

  RoundIconButton({required this.icon, this.onClick});

  @override
  State<RoundIconButton> createState() => _RoundIconButtonState(icon: icon, onClick: onClick);
}

class _RoundIconButtonState extends State<RoundIconButton> {
  final IconData icon;
  final Function()? onClick;
  Timer? timer;

  _RoundIconButtonState({required this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onHighlightChanged: (bool isHighlighted) {
        if (isHighlighted) {
          timer = Timer.periodic(Duration(milliseconds: 150), (timer) {
            if (onClick != null) {
              onClick!();
            }
          });
        } else {
          timer?.cancel();
        }
      },
      onPressed: (onClick != null) ? onClick : () {},
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: MyColor.black600,
      elevation: 0.0,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
