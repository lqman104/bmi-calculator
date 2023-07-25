import 'package:bmi_calculator/routes.dart';
import 'package:flutter/material.dart';

import 'constants/my_color.dart';

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
      initialRoute: Routes.kMainPage,
      routes: Routes.routes(context),
    );
  }
}
