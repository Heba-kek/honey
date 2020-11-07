import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';

class WalletCategoryListItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const WalletCategoryListItem({Key key, this.imagePath, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: CustomColors.mainGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            UIHelper.getShadow(),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath),
          ),
          Text(title),
        ],
      ),
    );
  }
}
