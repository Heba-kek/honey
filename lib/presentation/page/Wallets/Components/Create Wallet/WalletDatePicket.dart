import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Medicine/Pickers.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletHelper.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class WalletDatePicker extends StatelessWidget {
  final AppLocalizations local = AppLocalizations();
  final bool showYellowDivider;
  final Function(TimeOfDay time) onTimeChanged;
  final Function(DateTime day) onDayChanged;
  final DateTime selectedDay;
  final TimeOfDay selectedTime;

  WalletDatePicker(
      {Key key,
      this.showYellowDivider = true,
      this.onTimeChanged,
      this.onDayChanged,
      this.selectedDay,
      this.selectedTime})
      : super(key: key) {
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: InkWell(
        onTap: () {
          showCustomDatePicker(
              context: context,
              selectedDate: DateTime.now(),
              onChanged: onDayChanged,
              onConfirmed: () {
                showCustomTimePicker(
                    context: context,
                    selectedTime: TimeOfDay.now(),
                    onChanged: onTimeChanged);
              });
        },
        child: Container(
            height: 80,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: showYellowDivider
                  ? Border(
                      bottom: BorderSide(
                          color: CustomColors.mainYellowColor, width: 1),
                    )
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "assets/images/SVG/ic_calendar.svg",
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WalletHelper.getAutoSizeTextWith(
                      title: local.lbDate,
                      maxFontSize: 16,
                      minFontSize: 10,
                      maxLines: 1,
                      fontColor: Colors.grey[600],
                    ),
                    WalletHelper.getAutoSizeTextWith(
                        title: DateFormat('dd/MM/yyyy').format(selectedDay),
                        maxFontSize: 16,
                        minFontSize: 10,
                        maxLines: 1,
                        fontColor: Colors.grey[600]),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
                  child: SvgPicture.asset(
                    "assets/images/SVG/ic_clock.svg",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WalletHelper.getAutoSizeTextWith(
                        title: local.lbTime,
                        maxFontSize: 16,
                        minFontSize: 10,
                        maxLines: 1,
                        fontColor: Colors.grey[600]),
                    WalletHelper.getAutoSizeTextWith(
                        title: selectedTime.format(context),
                        maxFontSize: 16,
                        minFontSize: 10,
                        maxLines: 1,
                        fontColor: Colors.grey[600]),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
