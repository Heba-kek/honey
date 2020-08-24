import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/Colors.dart';

import 'package:honey/presentation/page/AppLocalizations.dart';
import 'package:honey/presentation/page/ExpensivePage.dart';
import 'package:honey/presentation/page/LocalHelper.dart';
import 'package:honey/presentation/page/Medicine/AddMedicineScreen.dart';
import 'package:honey/presentation/page/Revenue/revenuePage.dart';
import 'package:honey/presentation/page/MainActivity/mainactivity.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DrawerItem {
  String title;

  ImageIcon icon;

// Save a value
  DrawerItem(this.title, this.icon);
}

PageController controller;
int currentpage = 0;

class HomeScreen extends StatefulWidget {
  // final TargetService model;
  SpecificLocalizationDelegate _specificLocalizationDelegate;
  static String lang1;

// final noteSetvices memryServices;
  // final MemorySetvices memryServices;
  Future<Widget> setdrawer() async {
    var preferences = await SharedPreferences.getInstance();

// Save a value
    String lang1 = preferences.getString('lang');
    if (lang1 == 'ar') {
    } else {}
  }

  final drawerItemEn = [
    new DrawerItem(AppLocalizations().lbHomeEN,
        ImageIcon(AssetImage('assets/images/home.png'))),
    new DrawerItem(AppLocalizations().lbEx,
        ImageIcon(AssetImage('assets/images/meet.png'))),
    new DrawerItem(AppLocalizations().lbMediName,
        ImageIcon(AssetImage('assets/images/meet.png'))),
    new DrawerItem(AppLocalizations().lbRev,
        ImageIcon(AssetImage('assets/images/notes.png'))),
  ];
  final drawerItemsAr = [
    new DrawerItem(AppLocalizations().lbHomeAR,
        ImageIcon(AssetImage('assets/images/home.png'))),
    new DrawerItem(AppLocalizations().lbExAR,
        ImageIcon(AssetImage('assets/images/notes.png'))),
    new DrawerItem(AppLocalizations().lbMediName,
        ImageIcon(AssetImage('assets/images/meet.png'))),
    new DrawerItem(AppLocalizations().lbRevAR,
        ImageIcon(AssetImage('assets/images/notes.png'))),
  ];

  HomeScreen();

  @override
  HomeFragment createState() => new HomeFragment();
}

class HomeFragment extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  SpecificLocalizationDelegate _specificLocalizationDelegate;
  String langSave;
  int currentTab = 0;
  int _selectedDrawerIndex = 0;
  GlobalKey<FormState> _keyFormDeposit = GlobalKey();

  var one;
  PageController pageController;

  List<Widget> pages;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var drawerOptions = <Widget>[];

  Widget currentPage;

  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();

    langSave = preferences.getString('lang');
    //langSave=lang1;
    if (langSave == 'ar') {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("ar"));

      AppLocalizations().locale == 'ar';
      helper.onLocaleChanged(new Locale("ar"));
      AppLocalizations.load(new Locale("ar"));
      preferences.setString('lang', 'ar');

      for (var i = 0; i < widget.drawerItemsAr.length; i++) {
        var d = widget.drawerItemsAr[i];

        drawerOptions.add(new ListTile(
          leading: d.icon,
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        ));
      }
    } else {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("en"));

      AppLocalizations().locale == 'en';
      preferences.setString('lang', 'en');
      //   helper.onLocaleChanged(new Locale("en"));
      AppLocalizations.load(new Locale("en"));
      for (var i = 0; i < widget.drawerItemEn.length; i++) {
        var d = widget.drawerItemEn[i];

        drawerOptions.add(new ListTile(
          leading: d.icon,
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        ));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    one = MainActivity();
    pages = new List<Widget>();

    pages = [one];
    currentPage = one;
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);

    // CHECK IF OFFLINE OR ONLINE
//    connectivitySubscription = Connectivity()
//        .onConnectivityChanged
//        .listen((ConnectivityResult connectivityResult) {
//      if (connectivityResult == ConnectivityResult.none) {
//      } else if (_previousResult == ConnectivityResult.none) {}
//
//      _previousResult = connectivityResult;
//    });
//    helper.onLocaleChanged = onLocaleChange;
//
    navigationPage();
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Directionality(
            textDirection:
                langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: MainActivity());
      case 3:

        /*  return new Directionality(
            textDirection:
            langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push((MaterialPageRoute(
                      builder: (context) => MedicineAppointment())));
                },
                child: Text("Med app")));*/

        print('rev');

        return new Directionality(
            textDirection:
                langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: revenuePage());

      case 1:
        return new Directionality(
            textDirection:
                langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: expensivePage());

      case 2:
        return AddMedicineScreen();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  void dispose() {
    super.dispose();
  }

  var hide = true;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFEEEEEE),
      drawer: new Drawer(
          child: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new DrawerHeader(
              decoration: BoxDecoration(
                color: CustomColors.mainYellowColor,
              ),
              child: null,
            ),
            new Column(children: drawerOptions)
          ],
        ),
      )),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.language,
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage("assets/images/bell.png"),
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
          ],
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey[700],
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: [Image.asset("assets/images/honeyBeeLogo.png")],
        backgroundColor: CustomColors.mainYellowColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/personButton.png",
              height: 40,
              width: 40,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/settingButton.png",
              height: 40,
              width: 40,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/homeButton.png",
              height: 40,
              width: 40,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/reportButton.png",
              height: 40,
              width: 40,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/addButton.png",
              height: 40,
              width: 40,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 15,
        backgroundColor: CustomColors.bottomNavigationColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: CustomColors.mainYellowColor,
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
