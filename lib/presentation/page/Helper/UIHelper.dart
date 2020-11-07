import 'package:flutter/material.dart';

class UIHelper {
  static BoxShadow getShadow() {
    return BoxShadow(
      color: Colors.grey,
      offset: Offset(0.0, 1.0), //(x,y)
      blurRadius: 2.0,
    );
  }
}
