import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.no, this.custom, this.onpress});
  final Color no;
  final Widget custom;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: custom,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: no, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
