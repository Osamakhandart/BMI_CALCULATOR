import 'package:flutter/material.dart';

import 'constants.dart';

class Reusecolumn extends StatelessWidget {
  final Icon iconimage;
  final String boxtext;
  Reusecolumn({this.iconimage, this.boxtext});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconimage,
        SizedBox(
          height: 15.0,
        ),
        Text(
          boxtext,
          style: Kbigfont,
        )
      ],
    );
  }
}
