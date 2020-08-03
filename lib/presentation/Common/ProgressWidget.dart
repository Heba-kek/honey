import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget progressWidget() {
  return Center(
    child: Wrap(
      children: [
        AlertDialog(
          content: new Row(
            children: <Widget>[
              CircularProgressIndicator(),
              Text("Please wait")
            ],
          ),
        ),
      ],
    ),
  );
}
