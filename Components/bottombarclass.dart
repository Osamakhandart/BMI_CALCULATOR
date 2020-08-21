import 'package:flutter/material.dart';
import 'constants.dart';

class Bottombar extends StatelessWidget {
  Bottombar({@required this.onTap, @required this.BottomText});
  Function onTap;
  String BottomText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            BottomText,
            style: Kbigfont,
          ),
        ),
        color: kColorno,
        width: double.infinity,
        height: kbottomcontheight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
