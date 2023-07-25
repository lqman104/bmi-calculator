import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputRange extends StatelessWidget {
  final String label;
  final String value;
  final Function() onPlusClicked;
  final Function() onMinusClicked;

  InputRange({
    required this.label,
    required this.value,
    required this.onPlusClicked,
    required this.onMinusClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: kLabelTextStyle),
        SizedBox(height: 4),
        Text(
          value,
          style: kTitleTextStyle.copyWith(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onClick: onMinusClicked,
            ),
            SizedBox(
              width: 4,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onClick: onPlusClicked,
            )
          ],
        )
      ],
    );
  }
}
