import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

class MiddleActions extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth(context),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            getButton(
                context,
                local.lbMedicine,
                SvgPicture.asset(
                  "assets/images/SVG/medicines.svg",
                  fit: BoxFit.contain,
                ),
                () {}),
            getButton(
                context,
                local.lbRevEN,
                SvgPicture.asset(
                  "assets/images/SVG/Revenue.svg",
                  fit: BoxFit.contain,
                ),
                () {}),
            getButton(
                context,
                local.lbExAR,
                SvgPicture.asset(
                  "assets/images/SVG/expenses.svg",
                  fit: BoxFit.contain,
                ),
                () {}),
            getButton(
                context,
                local.lbAdd,
                SvgPicture.asset(
                  "assets/images/SVG/yellowAdd.svg",
                  fit: BoxFit.contain,
                ),
                () {})
          ],
        ));
  }

  Widget getButton(
      BuildContext context, String title, SvgPicture image, Function onPress) {
    final width = SizeConfig.screenWidth(context) * 0.22;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: Container(height: width, width: width, child: image),
          onTap: onPress,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(title),
        )
      ],
    );
  }
}
