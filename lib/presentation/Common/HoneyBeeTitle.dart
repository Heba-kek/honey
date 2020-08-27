import 'package:flutter/cupertino.dart';

class HoneyBeeTitle extends StatelessWidget {
  final double fontSize;

  const HoneyBeeTitle({Key key, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "Honey Bee",
      style: TextStyle(fontFamily: "Pristina", fontSize: fontSize),
    );
  }
}
