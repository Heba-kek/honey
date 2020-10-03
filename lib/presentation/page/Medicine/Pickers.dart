import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double kPickerHeaderPortraitHeight = 80.0;
const double kPickerHeaderLandscapeWidth = 168.0;
const double kDialogActionBarHeight = 52.0;
const double kDialogMargin = 30.0;

abstract class ICommonDialogProperties {
  final String title = null;
  final Color headerColor = null;
  final Color headerTextColor = null;
  final Color backgroundColor = null;
  final Color buttonTextColor = null;
  final double maxLongSide = null;
  final double maxShortSide = null;
  final String confirmText = null;
  final String cancelText = null;
}

class ResponsiveDialog extends StatefulWidget
    implements ICommonDialogProperties {
  ResponsiveDialog({
    this.context,
    String title,
    Widget child,
    this.headerColor,
    this.headerTextColor,
    this.backgroundColor,
    this.buttonTextColor,
    this.forcePortrait = false,
    double maxLongSide,
    double maxShortSide,
    this.hideButtons = false,
    this.okPressed,
    this.cancelPressed,
    this.confirmText,
    this.cancelText,
  })  : title = title ?? "Title Here",
        child = child ?? Text("Content Here"),
        maxLongSide = maxLongSide ?? 600,
        maxShortSide = maxShortSide ?? 400;

  // Variables
  final BuildContext context;
  @override
  final String title;
  final Widget child;
  final bool forcePortrait;
  @override
  final Color headerColor;
  @override
  final Color headerTextColor;
  @override
  final Color backgroundColor;
  @override
  final Color buttonTextColor;
  @override
  final double maxLongSide;
  @override
  final double maxShortSide;
  final bool hideButtons;
  @override
  final String confirmText;
  @override
  final String cancelText;

  // Events
  final VoidCallback cancelPressed;
  final VoidCallback okPressed;

  @override
  _ResponsiveDialogState createState() => _ResponsiveDialogState();
}

class _ResponsiveDialogState extends State<ResponsiveDialog> {
  Color _headerColor;
  Color _headerTextColor;
  Color _backgroundColor;
  Color _buttonTextColor;

  Widget header(BuildContext context, Orientation orientation) {
    return Container(
      color: _headerColor,
      height: (orientation == Orientation.portrait)
          ? kPickerHeaderPortraitHeight
          : null,
      width: (orientation == Orientation.landscape)
          ? kPickerHeaderLandscapeWidth
          : null,
      child: Center(
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20.0,
            color: _headerTextColor,
          ),
        ),
      ),
      padding: EdgeInsets.all(20.0),
    );
  }

  Widget actionBar(BuildContext context) {
    if (widget.hideButtons) return Container();

    var localizations = MaterialLocalizations.of(context);

    return Container(
      height: kDialogActionBarHeight,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: _headerColor),
          ),
        ),
        child: ButtonBar(
          children: <Widget>[
            FlatButton(
              textColor: _buttonTextColor,
              child: Text(widget.cancelText ?? localizations.cancelButtonLabel),
              onPressed: () => (widget.cancelPressed == null)
                  ? Navigator.of(context).pop()
                  : widget.cancelPressed(),
            ),
            FlatButton(
              textColor: _buttonTextColor,
              child: Text(widget.confirmText ?? localizations.okButtonLabel),
              onPressed: () => (widget.okPressed == null)
                  ? Navigator.of(context).pop()
                  : widget.okPressed(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(context != null);

    var theme = Theme.of(context);
    _headerColor = widget.headerColor ?? theme.primaryColor;
    _headerTextColor =
        widget.headerTextColor ?? theme.primaryTextTheme.headline6.color;
    _buttonTextColor = widget.buttonTextColor ?? theme.textTheme.button.color;
    _backgroundColor = widget.backgroundColor ?? theme.dialogBackgroundColor;

    final Orientation orientation = MediaQuery.of(context).orientation;

    // constrain the dialog from expanding to full screen
    final Size dialogSize = (orientation == Orientation.portrait)
        ? Size(widget.maxShortSide, widget.maxLongSide)
        : Size(widget.maxLongSide, widget.maxShortSide);

    return Dialog(
      backgroundColor: _backgroundColor,
      child: AnimatedContainer(
        width: dialogSize.width,
        height: dialogSize.height,
        duration: Duration(milliseconds: 200),
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            assert(orientation != null);
            assert(context != null);

            if (widget.forcePortrait) orientation = Orientation.portrait;

            switch (orientation) {
              case Orientation.portrait:
                return Column(
                  children: <Widget>[
                    header(context, orientation),
                    Expanded(
                      child: Container(
                        child: widget.child,
                      ),
                    ),
                    actionBar(context),
                  ],
                );
              case Orientation.landscape:
                return Row(
                  children: <Widget>[
                    header(context, orientation),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: widget.child,
                          ),
                          actionBar(context),
                        ],
                      ),
                    ),
                  ],
                );
            }
            return null;
          },
        ),
      ),
    );
  }
}

class SelectionPickerDialog extends StatefulWidget
    implements ICommonDialogProperties {
  SelectionPickerDialog({
    this.title,
    @required this.items,
    @required this.initialItem,
    this.icons,
    this.headerColor,
    this.headerTextColor,
    this.backgroundColor,
    this.buttonTextColor,
    this.maxLongSide,
    this.maxShortSide,
    this.confirmText,
    this.cancelText,
  });

  // Variables
  final List<String> items;
  final String initialItem;
  @override
  final String title;
  final List<Icon> icons;
  @override
  final Color headerColor;
  @override
  final Color headerTextColor;
  @override
  final Color backgroundColor;
  @override
  final Color buttonTextColor;
  @override
  final double maxLongSide;
  @override
  final double maxShortSide;
  @override
  final String confirmText;
  @override
  final String cancelText;

  @override
  State<SelectionPickerDialog> createState() =>
      _SelectionPickerDialogState(initialItem);
}

class _SelectionPickerDialogState extends State<SelectionPickerDialog> {
  _SelectionPickerDialogState(this.selectedItem);

  String selectedItem;

  @override
  Widget build(BuildContext context) {
    assert(context != null);

    return ResponsiveDialog(
      context: context,
      title: widget.title,
      headerColor: widget.headerColor,
      headerTextColor: widget.headerTextColor,
      backgroundColor: widget.backgroundColor,
      buttonTextColor: widget.buttonTextColor,
      maxLongSide: widget.maxLongSide,
      maxShortSide: widget.maxLongSide,
      confirmText: widget.confirmText,
      cancelText: widget.cancelText,
      child: SelectionPicker(
        items: widget.items,
        initialItem: selectedItem,
        icons: widget.icons,
        onChanged: (value) => setState(() => selectedItem = value),
      ),
      okPressed: () => Navigator.of(context).pop(selectedItem),
    );
  }
}

class SelectionPicker extends StatefulWidget {
  SelectionPicker({
    Key key,
    @required this.items,
    @required this.initialItem,
    @required this.onChanged,
    this.icons,
  })  : assert(items != null),
        super(key: key);

  // Constants
  static const double defaultItemHeight = 40.0;

  // Events
  final ValueChanged<String> onChanged;

  // Variables
  final List<String> items;
  final String initialItem;
  final List<Icon> icons;

  @override
  SelectionPickerState createState() {
    return SelectionPickerState(initialItem);
  }
}

class SelectionPickerState extends State<SelectionPicker> {
  SelectionPickerState(this.selectedValue);

  String selectedValue;

  @override
  Widget build(BuildContext context) {
    int itemCount = widget.items.length;
    var theme = Theme.of(context);

    return Container(
      child: Scrollbar(
        child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            bool isSelected = (widget.items[index] == selectedValue);
            Color itemColor = (isSelected)
                ? theme.accentColor
                : theme.textTheme.bodyText2.color;
            Icon icon = (widget.icons == null) ? null : widget.icons[index];
            if (icon != null && icon.color == null)
              icon = Icon(icon.icon, color: itemColor);

            return ListTile(
              leading: icon,
              title: Text(
                widget.items[index],
                style: TextStyle(color: itemColor),
              ),
              trailing:
                  (isSelected) ? Icon(Icons.check, color: itemColor) : null,
              onTap: () {
                setState(() {
                  selectedValue = widget.items[index];
                  widget.onChanged(selectedValue);
                });
              },
            );
          },
        ),
      ),
    );
  }
}

void showSelectionPicker({
  BuildContext context,
  String title,
  List<String> items,
  String selectedItem,
  List<Icon> icons,
  Color headerColor,
  Color headerTextColor,
  Color backgroundColor,
  Color buttonTextColor,
  String confirmText,
  String cancelText,
  double maxLongSide,
  double maxShortSide,
  ValueChanged<String> onChanged,
  VoidCallback onConfirmed,
  VoidCallback onCancelled,
}) {
  assert(items != null);
  assert(icons == null || items.length == icons.length);

  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return SelectionPickerDialog(
        items: items,
        title: title,
        initialItem: selectedItem,
        icons: icons,
        headerColor: headerColor,
        headerTextColor: headerTextColor,
        backgroundColor: backgroundColor,
        buttonTextColor: buttonTextColor,
        confirmText: confirmText,
        cancelText: cancelText,
        maxLongSide: maxLongSide,
        maxShortSide: maxLongSide,
      );
    },
  ).then((selection) {
    if (onChanged != null && selection != null) onChanged(selection);
    if (onCancelled != null && selection == null) onCancelled();
    if (onConfirmed != null && selection != null) onConfirmed();
  });
}

class ScrollPicker extends StatefulWidget {
  ScrollPicker({
    Key key,
    @required this.items,
    @required this.initialValue,
    @required this.onChanged,
    this.showDivider: true,
  })  : assert(items != null),
        super(key: key);

  // Events
  final ValueChanged<String> onChanged;

  // Variables
  final List<String> items;
  final String initialValue;
  final bool showDivider;

  @override
  _ScrollPickerState createState() => _ScrollPickerState(initialValue);
}

class _ScrollPickerState extends State<ScrollPicker> {
  _ScrollPickerState(this.selectedValue);

  // Constants
  static const double itemHeight = 50.0;

  // Variables
  double widgetHeight;
  int numberOfVisibleItems;
  int numberOfPaddingRows;
  double visibleItemsHeight;
  double offset;

  String selectedValue;

  ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    int initialItem = widget.items.indexOf(selectedValue);
    scrollController = FixedExtentScrollController(initialItem: initialItem);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    TextStyle defaultStyle = themeData.textTheme.bodyText2;
    TextStyle selectedStyle =
        themeData.textTheme.headline5.copyWith(color: themeData.accentColor);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        widgetHeight = constraints.maxHeight;

        return Stack(
          children: <Widget>[
            GestureDetector(
              onTapUp: _itemTapped,
              child: ListWheelScrollView.useDelegate(
                childDelegate: ListWheelChildBuilderDelegate(
                    builder: (BuildContext context, int index) {
                  if (index < 0 || index > widget.items.length - 1) {
                    return null;
                  }

                  var value = widget.items[index];

                  final TextStyle itemStyle =
                      (value == selectedValue) ? selectedStyle : defaultStyle;

                  return Center(
                    child: Text(value, style: itemStyle),
                  );
                }),
                controller: scrollController,
                itemExtent: itemHeight,
                onSelectedItemChanged: _onSelectedItemChanged,
                physics: FixedExtentScrollPhysics(),
              ),
            ),
            Center(child: widget.showDivider ? Divider() : Container()),
            Center(
              child: Container(
                height: itemHeight,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: themeData.accentColor, width: 1.0),
                    bottom:
                        BorderSide(color: themeData.accentColor, width: 1.0),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void _itemTapped(TapUpDetails details) {
    Offset position = details.localPosition;
    double center = widgetHeight / 2;
    double changeBy = position.dy - center;
    double newPosition = scrollController.offset + changeBy;

    // animate to and center on the selected item
    scrollController.animateTo(newPosition,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void _onSelectedItemChanged(int index) {
    String newValue = widget.items[index];
    if (newValue != selectedValue) {
      selectedValue = newValue;
      widget.onChanged(newValue);
    }
  }
}

class ScrollPickerDialog extends StatefulWidget
    implements ICommonDialogProperties {
  ScrollPickerDialog({
    this.title,
    this.items,
    this.initialItem,
    this.headerColor,
    this.headerTextColor,
    this.backgroundColor,
    this.buttonTextColor,
    this.maxLongSide,
    this.maxShortSide,
    this.showDivider: true,
    this.confirmText,
    this.cancelText,
  });

  // Variables
  final List<String> items;
  final String initialItem;
  @override
  final String title;
  @override
  final Color headerColor;
  @override
  final Color headerTextColor;
  @override
  final Color backgroundColor;
  @override
  final Color buttonTextColor;
  @override
  final double maxLongSide;
  @override
  final double maxShortSide;
  @override
  final String confirmText;
  @override
  final String cancelText;

  final bool showDivider;

  @override
  State<ScrollPickerDialog> createState() =>
      _ScrollPickerDialogState(initialItem);
}

class _ScrollPickerDialogState extends State<ScrollPickerDialog> {
  _ScrollPickerDialogState(this.selectedItem);

  String selectedItem;

  @override
  Widget build(BuildContext context) {
    assert(context != null);

    return ResponsiveDialog(
      context: context,
      title: widget.title,
      headerColor: widget.headerColor,
      headerTextColor: widget.headerTextColor,
      backgroundColor: widget.backgroundColor,
      buttonTextColor: widget.buttonTextColor,
      maxLongSide: widget.maxLongSide,
      maxShortSide: widget.maxLongSide,
      confirmText: widget.confirmText,
      cancelText: widget.cancelText,
      child: ScrollPicker(
        items: widget.items,
        initialValue: selectedItem,
        showDivider: widget.showDivider,
        onChanged: (value) => setState(() => selectedItem = value),
      ),
      okPressed: () => Navigator.of(context).pop(selectedItem),
    );
  }
}

void showNumberPicker({
  BuildContext context,
  String title,
  final int minNumber,
  final int maxNumber,
  final int selectedNumber,
  Color headerColor,
  Color headerTextColor,
  Color backgroundColor,
  Color buttonTextColor,
  String confirmText,
  String cancelText,
  double maxLongSide,
  double maxShortSide,
  ValueChanged<int> onChanged,
  VoidCallback onConfirmed,
  VoidCallback onCancelled,
}) {
  var items = List<String>.generate(
      maxNumber - minNumber + 1, (i) => (i + minNumber).toString());

  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return ScrollPickerDialog(
        items: items,
        title: title,
        initialItem: selectedNumber.toString(),
        headerColor: headerColor,
        headerTextColor: headerTextColor,
        backgroundColor: backgroundColor,
        buttonTextColor: buttonTextColor,
        confirmText: confirmText,
        cancelText: cancelText,
        maxLongSide: maxLongSide,
        maxShortSide: maxLongSide,
      );
    },
  ).then((selection) {
    if (onChanged != null && selection != null) onChanged(int.parse(selection));
    if (onCancelled != null && selection == null) onCancelled();
    if (onConfirmed != null && selection != null) onConfirmed();
  });
}

void showCustomTimePicker({
  BuildContext context,
  String title,
  TimeOfDay selectedTime,
  ValueChanged<TimeOfDay> onChanged,
  VoidCallback onConfirmed,
  VoidCallback onCancelled,
}) {
  showTimePicker(
    context: context,
    initialTime: selectedTime,
  ).then((selection) {
    if (onChanged != null && selection != null) onChanged(selection);
    if (onCancelled != null && selection == null) onCancelled();
    if (onConfirmed != null && selection != null) onConfirmed();
  });
}

void showCustomDatePicker({
  BuildContext context,
  String title,
  DateTime firstDate,
  DateTime lastDate,
  DateTime selectedDate,
  String okButtonLabel,
  String cancelButtonLabel,
  ValueChanged<DateTime> onChanged,
  VoidCallback onConfirmed,
  VoidCallback onCancelled,
}) {
  if (firstDate == null) firstDate = DateTime(1990, 1, 1);
  if (lastDate == null) lastDate = DateTime(2050, 12, 31);

  showDatePicker(
    context: context,
    firstDate: firstDate,
    lastDate: lastDate,
    initialDate: selectedDate,
    cancelText: cancelButtonLabel,
    confirmText: okButtonLabel,
  ).then((selection) {
    if (onChanged != null && selection != null) onChanged(selection);
    if (onCancelled != null && selection == null) onCancelled();
    if (onConfirmed != null && selection != null) onConfirmed();
  });
}
