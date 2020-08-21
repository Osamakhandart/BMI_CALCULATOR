import 'package:flutter/material.dart';
import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/bottombarclass.dart';
import 'package:bmi_calculator/calculation.dart';

class Resultclass extends StatelessWidget {
  Resultclass({@required this.bmicompliment, this.Result, this.advise});
  final String bmicompliment;
  final String Result;
  final String advise;
  CalculatorBrain obj1 = CalculatorBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Center(
                child: Text(
              'Your Result',
              style: kresultextf,
            )),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: kColorno),
            margin: EdgeInsets.only(top: 15),
            height: 420,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  bmicompliment.toUpperCase(),
                  style: Resultpagefont,
                ),
                Text(
                  Result,
                  style: Kreslutfont,
                ),
                Text(
                  advise,
                  textAlign: TextAlign.center,
                  style: Resultpagefont,
                )
              ],
            ),
          ),
          Bottombar(
              onTap: () {
                Navigator.pop(context);
              },
              BottomText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
