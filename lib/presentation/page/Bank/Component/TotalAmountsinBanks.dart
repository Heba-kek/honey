import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';

class TotalAmountInbankWidget extends StatelessWidget {
  final Map<String, String> currncies;

  const TotalAmountInbankWidget({Key key, this.currncies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth(context) * 0.85,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(SizeConfig.borderRadius)),
        color: Colors.grey[200].withAlpha(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (String key in currncies.keys)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(key), Text(currncies[key])],
                ),
              )
          ],
        ),
      ),
    );
  }
}
