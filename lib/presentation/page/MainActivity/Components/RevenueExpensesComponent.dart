import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

class RevenueExpenses extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth(context) * 0.95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_drop_down),
          Text(local.lbCash),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("50,000 SYP"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                getButtons(
                    local.lbExEn,
                    Icon(
                      Icons.remove_circle_outline,
                      color: Colors.red,
                    ),
                    () {}),
                getButtons(
                    local.lbRevEN,
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    () {}),
                getButtons(
                    local.lbConverter,
                    Icon(
                      Icons.compare_arrows,
                      color: Colors.green,
                    ),
                    () {}),
              ],
            ),
          ),
          Container(
            height: 16,
          )
        ],
      ),
    );
  }

  Widget getButtons(String title, Icon icon, Function onPress) {
    return Container(
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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(title),
          ),
          IconButton(icon: icon, onPressed: onPress)
        ],
      ),
    );
  }
}
