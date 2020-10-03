import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Extension/ColorExtension.dart';

class Category extends StatelessWidget {
  final icon;
  final String title;
  final editIcon;
  final Function onPressEdit;

  const Category(
      {Key key, this.icon, this.title, this.editIcon, this.onPressEdit})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: icon,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: onPressEdit,
                    child: editIcon,
                  ),
                ),
              ],
            ),
            Container(
              color: HexColor.fromHex("#707070"),
              width: MediaQuery.of(context).size.width - 32,
              height: 1,
            ),
          ],
        ));
  }
}
