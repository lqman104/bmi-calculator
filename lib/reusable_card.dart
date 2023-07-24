import 'package:flutter/cupertino.dart';

const _cardBorderRadius = 15.0;

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;

  ReusableCard({required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(_cardBorderRadius),
      ),
    );
  }
}
