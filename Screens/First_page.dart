import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/Reusable Column.dart';
import 'package:bmi_calculator/Components/Reusable Container.dart';
import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/Roundbutton.dart';
import 'package:bmi_calculator/Screens/Result.dart';
import 'package:bmi_calculator/Components/bottombarclass.dart';
import 'package:bmi_calculator/calculation.dart';

enum Genderchecker { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genderchecker selectgender;
  int height = 180;
  int weightval = 50;
  int ageval = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusable(
                      onpress: () {
                        setState(() {
                          selectgender = Genderchecker.male;
                        });
                      },
                      no: selectgender == Genderchecker.male
                          ? kColorno
                          : kinactivecolor,
                      custom: Reusecolumn(
                        iconimage: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        boxtext: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusable(
                      onpress: () {
                        setState(() {
                          selectgender = Genderchecker.female;
                        });
                      },
                      no: selectgender == Genderchecker.female
                          ? kColorno
                          : kinactivecolor,
                      custom: Reusecolumn(
                        iconimage: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        boxtext: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Reusable(
                    no: kColorno,
                    custom: Column(children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: klabletextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: Kbigfont,
                          ),
                          Text('CM', style: klabletextstyle)
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: kbottomcolor,
                          overlayColor: Color(0x3021FF20),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          },
                        ),
                      )
                    ]))),
            Expanded(
                child: Row(children: <Widget>[
              Expanded(
                child: Reusable(
                    no: kColorno,
                    custom: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: klabletextstyle,
                        ),
                        Text(
                          weightval.toString(),
                          style: Kbigfont,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundiconbutton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weightval--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Roundiconbutton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weightval++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Reusable(
                  no: kColorno,
                  custom: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Age',
                        style: klabletextstyle,
                      ),
                      Text(
                        ageval.toString(),
                        style: Kbigfont,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Roundiconbutton(
                            icon: Icons.remove,
                            onPressed: () {
                              setState(() {
                                ageval--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Roundiconbutton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  ageval++;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                ),
              )
            ])),
            Bottombar(
              onTap: () {
                CalculatorBrain obj =
                    CalculatorBrain(height: height, weight: weightval);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Resultclass(
                    Result: obj.Result(),
                    bmicompliment: obj.Compliment(),
                    advise: obj.Advise(),
                  );
                }));
              },
              BottomText: 'CALCULATE',
            )
          ]),
    );
  }
}
