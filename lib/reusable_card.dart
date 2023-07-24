import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  static const _cardBorderRadius = 15.0;
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
