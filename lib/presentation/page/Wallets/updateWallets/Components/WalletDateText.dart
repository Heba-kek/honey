import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';

class WalletDateText extends StatelessWidget {
  final String title;

  const WalletDateText({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.mainYellowColor, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.white,
          boxShadow: [UIHelper.getShadow()]),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Ebrima",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
