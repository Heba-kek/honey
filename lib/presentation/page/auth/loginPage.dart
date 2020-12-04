import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/PreferenceUtils.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Infrastructure/Auth/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Auth/Repository/AuthRepository.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/application/Auth/authBloc.dart';
import 'package:honey/application/Auth/authEvent.dart';
import 'package:honey/application/Auth/authState.dart';
import 'package:honey/presentation/homePage.dart';
import 'package:honey/presentation/page/LocalHelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  LoginActivity createState() => new LoginActivity();
}

class LoginActivity extends State<Login> {
  bool isChecked = false;
  var _temp;
  final _username = TextEditingController();
  final _password = TextEditingController();

  String _response = '';
  bool _apiCall = false;

  Widget progressWidget() {
    // jika masih proses kirim API
    return AlertDialog(
      content: new Row(
        children: <Widget>[CircularProgressIndicator(), Text("Please wait")],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navigationPage();
  }

  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();

// Save a value
    String langSave = preferences.getString('lang');
    if (langSave == 'ar') {
      // ignore: unnecessary_statements
      AppLocalizations().locale == 'ar';
      helper.onLocaleChanged(new Locale("ar"));
      preferences.setString('lang', 'ar');
    } else {
      // ignore: unnecessary_statements
      AppLocalizations().locale == 'en';
      preferences.setString('lang', 'en');
      helper.onLocaleChanged(new Locale("en"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return _setWidget();
  }

  Widget _setWidget() {
    return Scaffold(
        body: BlocProvider(
            create: (context) => AuthBloc(AuthRepositoryImpl(
                AuthRemoteDataSource(),
                NetworkInfoImpl(DataConnectionChecker()))),
            child: signinView()));
  }

  Widget signinView() {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is Loaded) {
          print('Success');
          print(state.signinResponse.msg);
          if (state.signinResponse.code == '1') {
            var preferences = await SharedPreferences.getInstance();
            preferences.setString('token', state.signinResponse.token);
            preferences.setString(
                'id', state.signinResponse.data.id.toString());
            PreferenceUtils().setuser(state.signinResponse);

            Route route = MaterialPageRoute(builder: (context) => HomeScreen());
            Navigator.pushReplacement(context, route);
          }
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          print('progress');
          return progressWidget();
        } else if (state is Error) {
          print('Error');
          print(state.message);
          //show error with retry
        }
        return SingleChildScrollView(
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
                                        prefixIcon: Icon(Icons.https),
                                        filled: true,
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
                                      padding:
                                          EdgeInsets.fromLTRB(0, 20, 10, 0),
                                      child: Text("Remember me",
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.black))),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 20, 1, 0),
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
                                  onTap: () {
                                    // Navigator.of(context)
                                    //     .pushReplacementNamed(Signup);
                                  },
                                ),
                              ),
                              Center(
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new RaisedButton(
                                          padding: EdgeInsets.fromLTRB(
                                              100, 10, 100, 10),
                                          disabledColor: Colors.yellow,
                                          onPressed: () {
                                            context.bloc<AuthBloc>().add(
                                                SigninEvent(
                                                    _username.text.trim(),
                                                    _password.text));
                                          },
                                          child: new Text(
                                            AppLocalizations().title,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          )),
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
