import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/Common/CustomDialog.dart';
import 'package:honey/presentation/Common/SelectedOptions.dart';
import 'package:honey/presentation/page/Bank/BankMainView.dart';
import 'package:honey/presentation/page/Expenses/NewExpenses.dart';
import 'package:honey/presentation/page/ExpensivePage.dart';
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
  final drawerItemEn = [
    new DrawerItem(AppLocalizations().lbHomeEN,
        ImageIcon(AssetImage('assets/images/home.png'))),
    new DrawerItem(AppLocalizations().lbEx,
        ImageIcon(AssetImage('assets/images/meet.png'))),
    new DrawerItem(AppLocalizations().lbMediName,
        ImageIcon(AssetImage('assets/images/meet.png'))),
    new DrawerItem(AppLocalizations().lbRev,
        ImageIcon(AssetImage('assets/images/notes.png'))),
    new DrawerItem(AppLocalizations().lbBankAEn,
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
    new DrawerItem(AppLocalizations().lbBankAAr,
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
  CustomPopupMenu _selectedChoices;

  var one;
  PageController pageController;

  List<Widget> pages;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var drawerOptions = <Widget>[];

  Widget currentPage;
  List<CustomPopupMenu> choices = <CustomPopupMenu>[
    CustomPopupMenu(title: 'Change Language', icon: Icons.language),
    CustomPopupMenu(title: 'Sign Out', icon: Icons.language),
  ];

  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();

    langSave = preferences.getString('lang');
    print("lang saved == $langSave");
    //langSave=lang1;
    if (langSave == 'ar') {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("ar"));

      AppLocalizations.load(new Locale("ar"));

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

  void _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
      if (choice.title == 'Change Language') {
        showDialog(
          context: context,
          builder: (BuildContext context) => CustomDialog(
            title: AppLocalizations().lbSelectL,
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            buttonText: AppLocalizations().lbDone,
          ),
        );
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Directionality(
                  textDirection:
                      langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
                  child: showDialogwindowDelete());
            });
      }
    });
  }

  @override
  void initState() {
    navigationPage();
    super.initState();
    one = MainActivity();
    pages = new List<Widget>();

    pages = [one];
    currentPage = one;
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Directionality(
            textDirection:
                langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: MainActivity());
      case 3:
        print('rev');

        return new SingleChildScrollView(
            child: Directionality(
                textDirection:
                    langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
                child: revenuePage(
                  onPressBack: () {
                    setState(() {
                      _selectedDrawerIndex = 0;
                    });
                  },
                )));

      case 1:
        return Directionality(
            textDirection:
                langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: NewExpensesScreen()
            //  expensivePage(
            //   onPressBack: () {
            //     setState(() {
            //       _selectedDrawerIndex = 0;
            //     });
            //   },
            // ),
            );

      case 2:
        return AddMedicineScreen();

      case 4:
        return BankMainView(
          onPressBack: () {
            setState(() {
              _selectedDrawerIndex = 0;
            });
          },
        );

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
            PopupMenuButton<CustomPopupMenu>(
              elevation: 30.2,
              icon: Icon(
                Icons.language,
                color: Colors.black,
              ),
              initialValue: _selectedChoices,
              onCanceled: () {
                print('You have not chossed anything');
              },
              tooltip: 'This is tooltip',
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.map((CustomPopupMenu choice) {
                  return PopupMenuItem<CustomPopupMenu>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
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
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedDrawerIndex = 0;
                });
              },
              child: Image.asset(
                "assets/images/homeButton.png",
                height: 40,
                width: 40,
              ),
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

  Widget showDialogwindowDelete() {
    return AlertDialog(
      title: Text(AppLocalizations().lbSign),
      content: Text(AppLocalizations().lbSignM),
      actions: <Widget>[
        // usually buttons at the bottoReminiderItemDatem of the dialog
        OutlineButton(
          color: Colors.yellow,
          focusColor: Colors.yellow,
          hoverColor: Colors.yellow,
          highlightColor: Colors.yellow,
          borderSide: BorderSide(color: Colors.green, width: 1),
          disabledBorderColor: Colors.yellow,
          child: Text(AppLocalizations().lbCancel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        OutlineButton(
            color: Colors.yellow,
            focusColor: Colors.yellow,
            hoverColor: Colors.yellow,
            highlightColor: Colors.yellow,
            borderSide: BorderSide(color: Colors.green, width: 1),
            disabledBorderColor: Colors.yellow,
            child: new Text(AppLocalizations().lbDone),
            onPressed: () async {
              var preferences = await SharedPreferences.getInstance();
              String token = preferences.getString('token');
              String userId = preferences.getString('id');
            }),
      ],
    );
  }
}
