import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/First_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF080020),
          backgroundColor: Color(0xFF080034),
          scaffoldBackgroundColor: Color(0xFF080020),
          textTheme: TextTheme(
            body1: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
      home: InputPage(),
    );
  }
}
