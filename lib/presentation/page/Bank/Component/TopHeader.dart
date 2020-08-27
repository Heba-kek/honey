import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/presentation/Common/HoneyBeeTitle.dart';
import 'package:honey/presentation/page/MainActivity/mainactivity.dart';

class TopHeader extends StatelessWidget {
  final Image image;
  final String title;
  final Function onPress;

  const TopHeader({Key key, this.image, this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200].withAlpha(150),
          borderRadius:
              BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: onPress),
            HoneyBeeTitle(
              fontSize: 32,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}
