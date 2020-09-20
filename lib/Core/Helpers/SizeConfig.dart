import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static final double borderRadius = 15.0;
}
