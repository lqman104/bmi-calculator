import 'package:bmi_calculator/my_color.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? gender;

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
                          color: gender == Gender.male
                              ? MyColor.enable
                              : MyColor.disable,
                          text: "MALE",
                        ),
                        onClick: () {
                          setState(() {
                            gender = Gender.male;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ReusableCard(
                        color: MyColor.cardBackground,
                        cardChild: IconContent(
                          iconData: FontAwesomeIcons.venus,
                          color: gender == Gender.female
                              ? MyColor.enable
                              : MyColor.disable,
                          text: "FEMALE",
                        ),
                        onClick: () {
                          setState(() {
                            gender = Gender.female;
                          });
                        },
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
