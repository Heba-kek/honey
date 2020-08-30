import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

class ReportDetails extends StatelessWidget {
  final String fromData;
  final String toDate;
  final String bankName;
  final String money;
  final String numbersOfMove;
  final AppLocalizations local = AppLocalizations();

  ReportDetails(
      {Key key,
      this.fromData,
      this.toDate,
      this.bankName,
      this.money,
      this.numbersOfMove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.borderRadius),
            ),
            color: Colors.grey[300].withAlpha(120)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          fromData,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          toDate,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Text(
                    bankName,
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      money,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 16),
                    child: Text(
                      numbersOfMove,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
