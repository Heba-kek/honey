import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

class LifeStyleWidget extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,

        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.grey[200],

              ),
              child: Center(
                child: Text(local.lbHoppiesHealth),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getImageWithText(local.lbSport,
                      Image.asset("assets/images/Sport.png"), () {}),
                  getImageWithText(
                      "BMI", Image.asset("assets/images/BMI.png"), () {}),
                  getImageWithText(local.lbMeals,
                      Image.asset("assets/images/Meals.png"), () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getImageWithText(local.lbAdd,
                      Image.asset("assets/images/GreyAdd.png"), () {}),
                  getImageWithText(local.lbReading,
                      Image.asset("assets/images/Reading.png"), () {}),
                  getImageWithText(local.lbSmoke,
                      Image.asset("assets/images/Smoke.png"), () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageWithText(String title, Image image, Function onPress) {
    return GestureDetector(
      child: Column(
        children: [
          image,
          Text(title),
        ],
      ),
      onTap: onPress,
    );
  }
}
