import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/Colors.dart';
import 'package:honey/Core/Helpers/SizeConfig.dart';
import 'package:honey/Core/lang/localss.dart';

class Reminders extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  final List<String> reminders = ['Reminder date, remainng 45 mins'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.borderRadius),
          ),
        ),
        child: ExpandableNotifier(
          // <-- Provides ExpandableController to its children
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expandable(
                // <-- Driven by ExpandableController from ExpandableNotifier
                collapsed: ExpandableButton(
                  // <-- Expands when tapped on the cover photo
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(SizeConfig.borderRadius),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 1,
                                ),
                                Text(local.lbReminderDate),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: ImageIcon(
                                    AssetImage("assets/images/bell.png"),
                                    color: CustomColors.mainYellowColor,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(child: Text(reminders[0])),
                      ),
                      ExpandableButton(
                        // <-- Collapses when tapped on
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(SizeConfig.borderRadius),
                              ),
                            ),
                            child: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(SizeConfig.borderRadius),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 1,
                              ),
                              Text(local.lbReminderDate),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ImageIcon(
                                  AssetImage("assets/images/bell.png"),
                                  color: CustomColors.mainYellowColor,
                                ),
                              ),
                            ],
                          ),
                        )),
                    for (String reminder in reminders)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(child: Text(reminder)),
                      ),
                    ExpandableButton(
                      // <-- Collapses when tapped on
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(
                              Radius.circular(SizeConfig.borderRadius),
                            ),
                          ),
                          child: Icon(Icons.arrow_drop_up),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
