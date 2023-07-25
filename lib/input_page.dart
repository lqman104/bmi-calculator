import 'package:bmi_calculator/routes.dart';
import 'package:bmi_calculator/my_color.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender.dart';
import 'icon_content.dart';
import 'input_range.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;
  int height = 180;
  int weight = 60;
  int age = 20;

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
                        color: MyColor.black700,
                        cardChild: IconContent(
                          iconData: FontAwesomeIcons.mars,
                          color: gender == Gender.male
                              ? Colors.white
                              : MyColor.black300,
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
                        color: MyColor.black700,
                        cardChild: IconContent(
                          iconData: FontAwesomeIcons.venus,
                          color: gender == Gender.female
                              ? Colors.white
                              : MyColor.black300,
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
                  color: MyColor.black800,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HEIGHT", style: kLabelTextStyle),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style:
                                kTitleTextStyle.copyWith(color: Colors.white),
                          ),
                          SizedBox(width: 4),
                          Text("cm", style: kLabelTextStyle),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: MyColor.black300,
                            thumbColor: MyColor.secondary,
                            overlayColor: MyColor.secondary.withAlpha(15),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30)),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      )
                    ],
                  ),
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
                        color: MyColor.black800,
                        cardChild: InputRange(
                          label: "WEIGHT",
                          value: weight.toString(),
                          onPlusClicked: () {
                            setState(() {
                              weight++;
                            });
                          },
                          onMinusClicked: () {
                            setState(() {
                              if (weight > 0) {
                                weight--;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ReusableCard(
                        color: MyColor.black800,
                        cardChild: InputRange(
                          label: "AGE",
                          value: age.toString(),
                          onPlusClicked: () {
                            setState(() {
                              age++;
                            });
                          },
                          onMinusClicked: () {
                            setState(() {
                              if (age > 1) {
                                age--;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.kResultPage);
              },
              child: Container(
                width: double.infinity,
                height: bottomContainerHeight,
                margin: EdgeInsets.only(top: 10),
                color: MyColor.secondary,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: kLabelTextStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
