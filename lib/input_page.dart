import 'package:bmi_calculator/my_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ReusableCard(
                        color: MyColor.cardBackground,
                        cardChild: IconContent(
                          iconData: FontAwesomeIcons.mars,
                          color: MyColor.disable,
                          text: "MALE",
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ReusableCard(
                        color: MyColor.cardBackground,
                        cardChild: IconContent(
                          iconData: FontAwesomeIcons.venus,
                          color: MyColor.disable,
                          text: "FEMALE",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ReusableCard(
                  color: MyColor.cardBackground,
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ReusableCard(
                        color: MyColor.cardBackground,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ReusableCard(
                        color: MyColor.cardBackground,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              color: MyColor.secondary,
            ),
          ],
        ),
      ),
    );
  }
}

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
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
