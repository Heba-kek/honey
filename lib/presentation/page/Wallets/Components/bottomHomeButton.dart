import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';

class BottomHomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(color: CustomColors.mainGreyColor, width: 2)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/images/homeButton.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
