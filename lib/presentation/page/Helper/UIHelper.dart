import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UIHelper {
  static BoxShadow getShadow() {
    return BoxShadow(
      color: Colors.grey,
      offset: Offset(0.0, 1.0), //(x,y)
      blurRadius: 2.0,
    );
  }

  static showHelperToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red[800],
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
