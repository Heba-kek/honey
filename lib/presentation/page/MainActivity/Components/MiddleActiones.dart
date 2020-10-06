import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

class MiddleActions extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth(context),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5),child:      Column(children: <Widget>[Image.asset(
              "assets/images/addblue.png",
            ),Text(local.lbAdd)],),),

            Padding(padding: EdgeInsets.all(5),child:      Column(children: <Widget>[Image.asset(
              "assets/images/exblue.png",
            ),Text(local.lbExAR)],),),


    Padding(padding: EdgeInsets.all(5),child:   Column(children: <Widget>[Image.asset(
    "assets/images/revblue.jpg",
    ),Text(local.lbRev)],)),
      Padding(padding: EdgeInsets.all(5),child:      Column(children: <Widget>[Image.asset(
        "assets/images/drug.png",
      ),Text(local.lbMedicineap,)],
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,),)






            ,

          ],
        ));
  }


}
