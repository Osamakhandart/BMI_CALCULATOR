import 'package:flutter/material.dart';
import 'constants.dart';

class Roundiconbutton extends StatelessWidget {
  IconData icon;
  Function onPressed;
  Roundiconbutton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: kinactivecolor,
    );
  }
}
