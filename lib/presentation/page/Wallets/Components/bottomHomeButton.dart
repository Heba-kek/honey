import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';

class BottomHomeButton extends StatelessWidget {
  final bool showReportButoon;
  final Function onPressReportButton;
  final Function onPressShowReguralPage;

  const BottomHomeButton(
      {Key key,
      this.showReportButoon = false,
      this.onPressReportButton,
      this.onPressShowReguralPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (showReportButoon)
            GestureDetector(
                onTap: onPressReportButton,
                child: SvgPicture.asset("assets/images/SVG/ic_home.svg")),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(
                "assets/images/SVG/ic_home.svg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          if (showReportButoon)
            GestureDetector(
                onTap: onPressShowReguralPage,
                child: SvgPicture.asset("assets/images/SVG/ic_home.svg")),
        ],
      ),
    );
  }
}
