import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  static const _cardBorderRadius = 15.0;
  final Color color;
  final Widget? cardChild;
  final void Function()? onClick;

  ReusableCard({required this.color, this.cardChild, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(_cardBorderRadius),
        ),
      ),
    );
  }
}
