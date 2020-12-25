import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/Core/lang/localss.dart';

class WalletsHeader extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();

  final Function onPressAdd;
  final bool showAdd;
  final bool showDelete;
  final Function onPressedDelete;

  WalletsHeader(
      {Key key,
      this.onPressAdd,
      this.showAdd,
      this.showDelete = false,
      this.onPressedDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: CustomColors.mainYellowColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
            child: Center(
              child: SvgPicture.asset(
                "assets/images/SVG/walletIcon.svg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              local.lbWallets,
              style: TextStyle(
                fontFamily: "Ebrima",
                fontSize: 20,
                color: const Color(0xff090808),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(fit: FlexFit.tight, child: SizedBox()),
          if (showAdd)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
              child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: onPressAdd),
            ),
          if (showDelete)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
              child: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: onPressedDelete),
            ),
        ],
      ),
    );
  }
}
