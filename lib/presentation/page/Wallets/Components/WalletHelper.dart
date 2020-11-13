import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WalletHelper {
  static final String svgPath = "assets/images/SVG/";

  static AutoSizeText getAutoSizeTextWith(
      {String title,
      int maxLines = 1,
      double maxFontSize = 20,
      double minFontSize = 10,
      Color fontColor = Colors.black}) {
    return AutoSizeText(
      title,
      style: TextStyle(fontSize: maxFontSize, color: fontColor),
      maxFontSize: maxFontSize,
      minFontSize: minFontSize,
      maxLines: maxLines,
    );
  }
}
