import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Extension/ColorExtension.dart';

class Category extends StatelessWidget {
  final icon;
  final String title;
  final bool isChecked;
  final Function(bool) onPressEdit;

  const Category(
      {Key key, this.icon, this.title, this.isChecked, this.onPressEdit})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex("#EBEBEB"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400].withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                      onChanged: onPressEdit,
                      value: isChecked,
                    ),
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
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: InkWell(
                    //     onTap: onPressEdit,
                    //     child: editIcon,
                    //   ),
                    // ),
                  ],
                ),
                // Container(
                //   color: HexColor.fromHex("#707070"),
                //   width: MediaQuery.of(context).size.width - 32,
                //   height: 1,
                // ),
              ],
            )),
      ),
    );
  }
}
