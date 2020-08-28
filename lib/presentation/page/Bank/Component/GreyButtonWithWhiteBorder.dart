import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';

class GreyButtonWithWhiteBorder extends StatelessWidget {
  final String title;
  final Function onPress;

  const GreyButtonWithWhiteBorder({Key key, this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        color: Colors.grey[350],
        borderRadius:
            BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: FlatButton(
        onPressed: onPress,
        child: Text(title),
      ),
    );
  }
}
