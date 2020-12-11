import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/PreferenceUtils.dart';
import 'package:honey/Core/Router/Router.dart' as honeyRoute;
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/homePage.dart';
import 'package:honey/presentation/page/auth/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

//this is to test dani modification
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: honeyRoute.Router.generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Ebrima",
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MultiBlocProvider(providers: [
          BlocProvider<WalletsBloc>(
            create: (context) => WalletsBloc(),
          ),
        ], child: MyHomePage(title: 'Flutter Demo Home Page')),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;
  var _visible = true;

  startTime() async {
    var _duration = new Duration(seconds: 4);

    return new Timer(_duration, navigationPage);
  }

  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('token');
    String langSave;
    SpecificLocalizationDelegate _specificLocalizationDelegate;

    langSave = preferences.getString('lang');

    if (langSave == 'ar') {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("ar"));

      AppLocalizations.load(new Locale("ar"));
    } else {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("en"));
      AppLocalizations.load(new Locale("en"));
    }
    if (token != null) {
      //  Navigator.of(context).pushReplacementNamed(HOME_SCREEN);

      Route route = MaterialPageRoute(builder: (context) => HomeScreen());
      Navigator.pushReplacement(context, route);
    } else {
      Route route = MaterialPageRoute(builder: (context) => Login());
      Navigator.pushReplacement(context, route);
    }
  }

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 10));

    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));

    animationController.forward();

    setState(() {
      _visible = !_visible;
    });

    startTime();
    PreferenceUtils.init();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.asset(
                'assets/images/splash_log.png',
                // height: 25.0,
                width: 350,
                //  fit: BoxFit.scaleDown,
              )
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/logo_new.png',
                width: animation.value * 150,
                height: animation.value * 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
