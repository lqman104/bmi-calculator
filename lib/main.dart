import 'package:flutter/material.dart';

import 'input_page.dart';
import 'my_color.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: MyColor.primary,
        ),
        primaryColor: MyColor.primary,
        scaffoldBackgroundColor: MyColor.primary,
        useMaterial3: true,
      ),
      home: InputPage(),
    );
  }
}
