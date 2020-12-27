import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Wallets/Components/Create%20Wallet/WalletCustomButton.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';
import 'dart:ui' as ui;

class DeleteDialog extends StatefulWidget {
  final String dialogTitle;
  final Color titleColor;
  final walletNameAndIcon;
  final String description;
  final Function onPressedDelete;

  const DeleteDialog(
      {Key key,
      this.dialogTitle,
      this.titleColor = Colors.red,
      this.walletNameAndIcon,
      this.description,
      this.onPressedDelete})
      : super(key: key);

  @override
  _DeleteDialogState createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;
  final AppLocalizations local = AppLocalizations();

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: local.locale.contains("ar")
          ? ui.TextDirection.rtl
          : ui.TextDirection.ltr,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Padding(
              padding: EdgeInsets.only(left: 22, right: 22),
              child: Container(
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 24.0, left: 16, right: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      WalletHelper.getAutoSizeTextWith(
                        title: widget.dialogTitle,
                        fontColor: widget.titleColor,
                        maxFontSize: 16,
                        minFontSize: 10,
                        maxLines: 1,
                      ),
                      widget.walletNameAndIcon,
                      WalletHelper.getAutoSizeTextWith(
                        title: widget.description,
                        maxFontSize: 16,
                        minFontSize: 10,
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 44.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WalletCustomButton(
                              buttonTitle: local.btnsubmit,
                              onPress: widget.onPressedDelete,
                            ),
                            WalletCustomButton(
                              buttonTitle: local.lbCancel,
                              onPress: () {
                                controller.reverse().then((value) {
                                  Navigator.of(context).pop();
                                });
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
