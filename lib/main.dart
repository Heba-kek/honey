import 'dart:async';

import 'package:flutter/material.dart';
import 'package:honey/presentation/page/Medicine/MedicineMainView.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

//this is to test dani modification
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    if (token != null) {
      //  Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
      /*   Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => myrest(),
        ),
      );*/
    } else {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => MedicineMainView(),
        ),
      );
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
