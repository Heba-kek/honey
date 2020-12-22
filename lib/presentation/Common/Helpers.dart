import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/lang/localss.dart';

showAlertDialog(BuildContext context, Function onPressedSubmit) {
  AppLocalizations local = AppLocalizations();
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text(local.lbCancel),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget continueButton = FlatButton(
    child: Text(local.lbSubmit),
    onPressed: onPressedSubmit,
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(local.lbConfirmation),
    content: Text(""),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
