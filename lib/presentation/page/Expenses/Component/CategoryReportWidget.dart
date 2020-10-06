import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Extension/ColorExtension.dart';
import 'package:honey/Core/lang/localss.dart';

class CategoryCard extends StatelessWidget {
  final icon;
  final String title;
  final String totalValue;
  final String precentage;
  final Function onPressDetails;
  final double progressValue;
  final AppLocalizations locale = AppLocalizations();
  CategoryCard(
      {Key key,
      this.icon,
      this.title,
      this.totalValue,
      this.precentage,
      this.onPressDetails,
      this.progressValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: icon,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: HexColor.fromHex("#707070"),
                  ),
                ),
                Column(
                  children: [Text(locale.lbTotal), Text(totalValue)],
                ),
                Column(
                  children: [Text(locale.lbPercentage), Text(precentage + "%")],
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: onPressDetails,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: HexColor.fromHex("#50D25AEF"),
                    ),
                    child: Text(
                      locale.lbDetails,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: HexColor.fromHex("#707070"),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: LinearProgressIndicator(
                    backgroundColor: HexColor.fromHex("#50D25AEF"),
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                    value: progressValue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
