import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';

class AddButtonWithWhiteHeader extends StatelessWidget {
  final Function onPress;

  const AddButtonWithWhiteHeader({Key key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.screenHeight(context) * 0.06,
          width: SizeConfig.screenWidth(context) * 0.95,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
              color: Colors.white),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
            child: Center(
                child: Align(
              heightFactor: 0.08,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    shape: BoxShape.circle),
                child: new FloatingActionButton(
                  onPressed: onPress,
                  backgroundColor: Colors.grey[200],
                  splashColor: Colors.blue,
                  child: Icon(
                    Icons.add,
                    color: Colors.blue[800],
                    size: 44,
                  ),
                ),
              ),
            ))),
      ],
    );
  }
}
