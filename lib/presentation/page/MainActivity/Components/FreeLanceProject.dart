import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/Colors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

enum FreeLanceProjectType { freeLance, project, both }

class FreeLanceProject extends StatelessWidget {
  final FreeLanceProjectType widgetType;
  final AppLocalizations local = AppLocalizations();

  FreeLanceProject({Key key, this.widgetType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    if (widgetType != FreeLanceProjectType.both) {
      return Container(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
                color: CustomColors.mainYellowColor),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(widgetType == FreeLanceProjectType.freeLance
                    ? local.lbFreeLance
                    : local.lbProEn),
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(SizeConfig.borderRadius)),
                      color: CustomColors.mainYellowColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(local.lbProEn),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(SizeConfig.borderRadius)),
                      color: CustomColors.mainYellowColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(local.lbFreeLance),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
