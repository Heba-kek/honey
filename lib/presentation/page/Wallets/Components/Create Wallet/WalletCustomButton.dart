import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/presentation/page/Helper/UIHelper.dart';

class WalletCustomButton extends StatelessWidget {
  final onPress;
  final String buttonTitle;

  const WalletCustomButton({Key key, this.onPress, this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.mainYellowColor, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
          boxShadow: [UIHelper.getShadow()]),
      child: FlatButton(
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: onPress,
      ),
    );
  }
}
