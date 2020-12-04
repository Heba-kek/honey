import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/LocalHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class register extends StatefulWidget {
  @override
  RegistreActivity createState() => new RegistreActivity();
}

class RegistreActivity extends State<register> {
  bool isChecked = false;
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Future initState() {
    // TODO: implement initState

    super.initState();
    navigationPage();

//AppLocalizations.load(Locale('ar'));
//AppLocalizations.of(context).locale;
//AppLocalizations().locale;
// Save a value
    //  String langSave = preferences.getString('lange');
    //  helper.onLocaleChanged = onLocaleChange;
  }

  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();

// Save a value
    String langSave = preferences.getString('lang');
    if (langSave == 'ar') {
      helper.onLocaleChanged(new Locale("ar"));
      preferences.setString('lang', 'ar');
    } else {
      preferences.setString('lang', 'en');
      helper.onLocaleChanged(new Locale("en"));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _setWidget();
  }

  Widget _setWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: new Image.asset(
                'assets/images/log_back.png',
                //  width: size.width,
                //   height: size.height,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16, 80, 16, 0),
                child: Stack(
                  // any unpositioned children (ie, our text) will be aligned at the bottom right
                  alignment: Alignment.topCenter,

                  children: [
                    // first child in the stack is on bottom
                    Image.asset('assets/images/path.png'),
                    //            <--- image

                    // second child in the stack
                    Padding(
                        padding: EdgeInsets.fromLTRB(16, 40, 16, 0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/logo_new.png',
                                  width: 70,
                                  height: 70,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                              child: Material(
                                  color: Colors.white,
                                  child: TextField(
                                    controller: _username,
                                    decoration: InputDecoration(
                                      filled: true,

                                      hintText: "Enter Your Email",
                                      // labelStyle: TextStyle(color: Colors.black,backgroundColor: Colors.yellow),

                                      prefixIcon: Icon(Icons.email),
                                      //can also add icon to the end of the textfiled
                                      //  suffixIcon: Icon(Icons.remove_red_eye),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                              child: Material(
                                  color: Colors.white,
                                  child: TextField(
                                    controller: _password,
                                    decoration: InputDecoration(
                                      hintText: "Enter Your Password",
                                      //add icon outside input field
                                      // icon: Icon(Icons.email),
                                      //add icon to the beginning of text field
                                      prefixIcon: Icon(Icons.https),
                                      filled: true,

                                      //can also add icon to the end of the textfiled
                                      //  suffixIcon: Icon(Icons.remove_red_eye),
                                    ),
                                    obscureText: true,
                                  )),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.fromLTRB(4, 20, 0, 0),
                                    child: Row(
                                      children: <Widget>[
                                        Material(
                                          color: Colors.white,
                                          child: Checkbox(
                                            value: isChecked,
                                            onChanged: (value) {
                                              setState(() {
                                                isChecked = value;
                                              });
                                            },
                                            checkColor: Colors.white,
                                            activeColor: Colors.purple,
                                          ),
                                        )
                                      ],
                                    )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                    child: Text("Remember me",
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black))),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 20, 1, 0),
                                    child: Text(AppLocalizations().lblname,
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.purple)))
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: GestureDetector(
                                child: Text(
                                  AppLocalizations().lbcreate,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                                onTap: () {},
                              ),
                            ),
                            Center(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      /* FlatButton.icon(
                                    color: Colors.red,
                                    icon: Icon(Icons.add_a_photo), //`Icon` to display
                                    label: Text('Add a Photo'), //`Text` to display
                                    onPressed: () {
                                      //Code to execute when Floating Action Button is clicked
                                      //...
                                    },
                                  ),*/
                                      new RaisedButton(
                                        padding: EdgeInsets.fromLTRB(
                                            100, 10, 100, 10),
                                        // padding: const EdgeInsets.all(18.0),

                                        //  textColor: Colors.yellow,colorBrightness: Brightness.dark,
                                        disabledColor: Colors.yellow,

                                        //   color: Colors.yellow,

                                        //  onPressed: addNumbers,
                                        onPressed: () async {
                                          setState(() {
                                            //  _apiCall = true;
                                          });
                                          /* String lang =  AppLocalizations().locale;
                                      var  preferences = await SharedPreferences.getInstance();

// Save a value
                                      preferences.setString('lang', lang);
                                      String langSave = preferences.getString('lang');
                                      if(langSave=='ar'){
                                        AppLocalizations().locale=='en';
                                        preferences.setString('lang', 'en');
                                        helper.onLocaleChanged(new Locale("en"));
                                        AppLocalizations.load(new Locale("en"));

                                      }else{
                                        AppLocalizations().locale=='ar';
                                        helper.onLocaleChanged(new Locale("ar"));
                                        AppLocalizations.load(new Locale("ar"));
                                        preferences.setString('lang', 'ar');


                                      }*/

                                          //     _callPostAPI();

                                          //   helper.onLocaleChanged(new Locale('ar'));
                                        },

                                        child: new Text(
                                          AppLocalizations().title,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ), //   progressWidget()
                                    ],
                                  )),
                            )
                          ],
                        )),
                  ],
                ))

            /*
              children: <Widget>[
                Row(
                  children: <Widget>[],
                )
          //    ],
            )*/
          ],
        ),
      ),
    );
  }
}
