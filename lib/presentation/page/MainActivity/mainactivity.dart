import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Domain/Home/HomeRepository.dart';
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
  SpecificLocalizationDelegate _specificLocalizationDelegate;
  String langSave;
  @override
  void initState() {
    navigationPage();
    homeBloc = HomeBloc(HomeRepositoryIMPL());
    super.initState();
  }

  @override
  void dispose() {
    homeBloc.close();
    super.dispose();
  }

  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();

    langSave = preferences.getString('lang');
    print("lang saved == $langSave");
    //langSave=lang1;
    if (langSave == 'ar') {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("ar"));

      AppLocalizations.load(new Locale("ar"));
    } else {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("en"));
      AppLocalizations.load(new Locale("en"));
    }
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
            return Directionality(
                textDirection:
                    langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
                child: mainWidget());
          } else if (snapshot.data is Error) {
            return Center(
              child: Text(snapshot.data.toString()),
            );
          } else {
            return Container();
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
          color: CustomColors.mainYellowColor,
          child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                children: [
                  // HoneyBeeTopTitles(),
                  Directionality(
                      textDirection: langSave == 'ar'
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 90, 40, 0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              AppLocalizations().lbSP,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          AppLocalizations().lbPer,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),

                  RevenueExpenses(),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: MiddleActions(),
                  ),
                  Calendar(),
                  Reminders(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          AppLocalizations().lbPro,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Container(
                              width: SizeConfig.screenWidth(context),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/revnew.png",
                                        ),
                                        Text(AppLocalizations().lbAdd)
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/images/pro.png",
                                          ),
                                          Text('شركة البدائل')
                                        ],
                                      )),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/pro.png",
                                        ),
                                        Text('مشروع ظهر الجبل')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/pro.png",
                                        ),
                                        Text('عمل حر')
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          AppLocalizations().lbProMa,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Container(
                              width: SizeConfig.screenWidth(context),
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/revnew.png",
                                        ),
                                        Text(AppLocalizations().lbAdd)
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/images/group.png",
                                          ),
                                          Text('شركة البدائل')
                                        ],
                                      )),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/group.png",
                                        ),
                                        Text('الفريق البرمجي')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/group.png",
                                        ),
                                        Text('فريق التصميم')
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  LifeStyleWidget(),
                  Directionality(
                      textDirection: langSave == 'ar'
                          ? TextDirection.ltr
                          : TextDirection.ltr,
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                  'Designed and Created By Badael Buisness Group')
                            ],
                          )))
                ],
              )),
        ),
      ],
    );
  }
}
