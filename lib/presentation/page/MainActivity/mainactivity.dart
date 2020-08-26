import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/Colors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/presentation/page/MainActivity/Components/Calendar.dart';
import 'package:honey/presentation/page/MainActivity/Components/FreeLanceProject.dart';
import 'package:honey/presentation/page/MainActivity/Components/HoneyBeeTopTitles.dart';
import 'package:honey/presentation/page/MainActivity/Components/LifeStyle.dart';
import 'package:honey/presentation/page/MainActivity/Components/MiddleActiones.dart';
import 'package:honey/presentation/page/MainActivity/Components/Reminders.dart';
import 'package:honey/presentation/page/MainActivity/Components/RevenueExpensesComponent.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: SizeConfig.screenWidth(context),
          height: SizeConfig.screenHeight(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 1.0),
              colors: [
                CustomColors.mainYellowColor,
                CustomColors.mainGreyColor
              ],
              stops: [0.0, 1.0],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],
          ),
          child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                children: [
                  HoneyBeeTopTitles(),
                  RevenueExpenses(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 32, 8, 24),
                    child: FreeLanceProject(
                      widgetType: FreeLanceProjectType.freeLance,
                    ),
                  ),
                  MiddleActions(),
                  Calendar(),
                  Reminders(),
                  LifeStyleWidget(),
                ],
              )),
        ),
      ],
    );
  }
}
