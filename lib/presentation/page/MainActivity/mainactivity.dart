import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Infrastructure/Home/Repository/HomeRepositoryIML.dart';
import 'package:honey/application/Home/bloc.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
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
  HomeBloc homeBloc;

  @override
  void initState() {
    homeBloc = HomeBloc(HomeRepositoryIMPL());
    super.initState();
  }

  @override
  void dispose() {
    homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: homeBloc.mapEventToState(GetHomeEvent()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          if (snapshot.data is GetHomeLoaded) {
            return mainWidget();
          } else if (snapshot.data is Error) {
            return Center(
              child: Text(snapshot.data.toString()),
            );
          } else {
            return progressWidget();
          }
        }
      },
    );
  }

  Widget mainWidget() {
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
