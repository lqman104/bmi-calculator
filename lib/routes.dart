import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/cupertino.dart';

abstract class Routes {
  static final kMainPage = "/";
  static final kResultPage = "/result";

  static Map<String, Widget Function(BuildContext)> routes(
      BuildContext context) {
    return {
      kMainPage: (context) => InputPage(),
      kResultPage: (context) => ResultPage()
    };
  }
}
