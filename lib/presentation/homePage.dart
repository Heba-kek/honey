import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:honey/presentation/page/AppLocalizations.dart';
import 'package:honey/presentation/page/ExpensivePage.dart';
import 'package:honey/presentation/page/LocalHelper.dart';
import 'package:honey/presentation/page/Medicine/AddMedicineScreen.dart';
import 'package:honey/presentation/page/Revenue/revenuePage.dart';
import 'package:honey/presentation/page/mainactivity.dart';

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

  onLocaleChange(Locale locale) {
    setState(() {
      _specificLocalizationDelegate = new SpecificLocalizationDelegate(locale);
    });
  }

  List<Widget> pages;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var drawerOptions = <Widget>[];

  Widget currentPage;
//  StreamSubscription connectivitySubscription;

//  ConnectivityResult _previousResult;

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

  // final dateFormat = DateFormat("dd-M-yyyy");

  @override
  void initState() {
    super.initState();
    one = mainActivity();
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
            child: mainActivity());
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
//    connectivitySubscription.cancel();
  }

  var hide = true;

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
                color: Colors.yellow,

                /*  image: DecorationImage(
                image: AssetImage("assets/images/alco.jpg"),
                fit: BoxFit.cover)*/
              ),
              child: null,
            ),
            new Column(children: drawerOptions)
          ],
        ),
      )),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Honey Bee',
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}

Widget build(BuildContext context) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // A fixed-height child.
                color: const Color(0xff808000), // Yellow
                height: 120.0,
              ),
              Container(
                // Another fixed-height child.
                color: const Color(0xff008000), // Green
                height: 120.0,
              ),
            ],
          ),
        ),
      );
    },
  );
}

builder(int index) {
  return new AnimatedBuilder(
    animation: controller,
    builder: (context, child) {
      double value = 1.0;
      if (controller.position.haveDimensions) {
        value = controller.page - index;
        value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
      }

      return new Center(
        child: new SizedBox(
          height: Curves.easeOut.transform(value) * 300,
          width: Curves.easeOut.transform(value) * 250,
          child: child,
        ),
      );
    },
    child: new Container(
      margin: const EdgeInsets.all(8.0),
      color: index % 2 == 0 ? Colors.blue : Colors.red,
    ),
  );
}
