import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final Widget icon;
  final String title;
  final String subtitle;

  CustomAppBar(this.icon, this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[Text(title), icon, Text(subtitle)],
      ),
    );
  }
}
