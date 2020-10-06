import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RevenueExpenses extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  SpecificLocalizationDelegate _specificLocalizationDelegate;
  String langSave;
  @override
  void initState() {
    navigationPage();
  }
  Future navigationPage() async {
    var preferences = await SharedPreferences.getInstance();

    langSave = preferences.getString('lang');
    print("lang saved == $langSave");
    //langSave=lang1;
    if (langSave == 'ar') {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("ar"));

      AppLocalizations.load(new Locale("ar"));


    } else {
      _specificLocalizationDelegate =
          SpecificLocalizationDelegate(new Locale("en"));
      AppLocalizations.load(new Locale("en"));


    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    //  width: SizeConfig.screenWidth(context) * 0.95,
      color: Colors.white,
      child: Stack(children: <Widget>[Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.arrow_drop_down),
          Padding(padding: EdgeInsets.all(8.0),
            child:
            Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[SvgPicture.asset('assets/images/SVG/dollar.svg',color: CustomColors.mainYellowColor,),Text(local.lbCash),],),),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text("500,000"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: <Widget>[Image.asset('assets/images/expenew.png'),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5),child: Text(AppLocalizations().lbEx),)],)
                ,
                Column(children: <Widget>[Image.asset('assets/images/revnew.png'),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5),child: Text(AppLocalizations().lbRev),)],),

                Column(children: <Widget>[Image.asset('assets/images/tranew.png'),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5),child: Text(AppLocalizations().lbTransfer),)],),


              ],
            ),
          ),
          Container( width:MediaQuery.of(context).size.width,decoration: BoxDecoration(
            color: Colors.grey[200],

          ),child:
          Padding(padding: EdgeInsets.all(8.0),
            child: Icon(Icons.keyboard_arrow_down),)),
        ],
      ),  Directionality(
          textDirection:
          langSave == 'ar' ? TextDirection.ltr : TextDirection.ltr,
          child: Padding(padding: EdgeInsets.all(10),child:
       Row(children: <Widget>[ Column(children: <Widget>[Padding(padding: EdgeInsets.all(2),
         child: Image.asset('assets/images/rehome.png'),),Text(AppLocalizations().lbCashre)],)],),))],),
    );
  }

/*
  Widget getButtons(String title, Icon icon, Function onPress) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        color: Colors.grey[350],
        borderRadius:
            BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(title),
          ),
          IconButton(icon: icon, onPressed: onPress)
        ],
      ),
    );
  }
*/
}
