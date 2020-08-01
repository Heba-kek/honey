import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:intl/intl.dart';

class MedicineMainView extends StatefulWidget {
  @override
  _MedicineMainViewState createState() => _MedicineMainViewState();
}

class _MedicineMainViewState extends State<MedicineMainView> {
  TextEditingController patientNameController = TextEditingController();

  TextEditingController medicineNameController = TextEditingController();
  AppLocalizations local = AppLocalizations();

  bool _whenNecessaryCheck = false;
  bool _dailyCheck = true;
  bool _otherCheck = false;
  bool _forEverChecked = false;
  bool _forEverOtherChecked = false;
  bool _doItByYourSelfCheck = false;
  var numberOfDays = 0;
  var medicineDate = DateTime.now();
  var medicineTime = TimeOfDay.now();

  List<DateTime> myDates = [];

//to be done later
  String speed = 'Ludicrous';

  List<String> speedOptions = <String>[
    'Light',
    'Ridiculous',
    'Ludicrous',
    'Plaid',
  ];

  List<Icon> speedIcons = <Icon>[
    Icon(Icons.sort),
    Icon(Icons.clear_all),
    Icon(Icons.swap_calls),
    Icon(Icons.select_all),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Honey Bee",
              style: TextStyle(color: Colors.black),
            ),
            Text(local.lbmedicine, style: TextStyle(color: Colors.black)),
            Container(
              child: Image.asset("assets/images/logo_new.png"),
              height: 30,
              width: 30,
            ),
          ],
        ),
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            getBasicInfo(),
            getMedicineInfo(),
            Padding(
              padding: EdgeInsets.all(12),
              child: Center(
                child: Text(local.lbmedicine),
              ),
            ),
            getWhenNecessary(),
            getDaily(),
            getOther(),
            getDoItByYourSelf(),
          ],
        ),
      ),
    );
  }

  Widget getBasicInfo() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              getName(local.lbPatient, patientNameController),
              getName(local.lbMedicine, medicineNameController),
            ],
          ),
        ),
      ),
    );
  }

  Widget getName(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: Colors.blueGrey[400], width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
            Expanded(child: TextField(controller: controller))
          ],
        ),
      ),
    );
  }

  Widget getMedicineInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              getMedcineInfoNames(local.lbMedicineShape),
              getMedcineInfoNames(local.lbdose),
              getMedcineInfoNames(local.lbInstruction),
            ],
          ),
        ),
      ),
    );
  }

  Widget getMedcineInfoNames(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(title)),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(color: Colors.blueGrey[400], width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: FlatButton(
                onPressed: () {
                  showMaterialSelectionPicker(
                    headerColor: Colors.yellow,
                    context: context,
                    title: "Starship Speed",
                    items: speedOptions,
                    selectedItem: speed,
                    icons: speedIcons,
                    onChanged: (value) => setState(() => speed = value),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(speed),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                )),
          ),
        ),
        Container(),
      ],
    );
  }

  Widget getWhenNecessary() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: CheckboxListTile(
            title: Text(local.lbwhennecessary),
            value: _whenNecessaryCheck,
            onChanged: (newValue) {
              setState(() {
                _whenNecessaryCheck = newValue;
              });
            },
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
        ),
      ),
    );
  }

  Widget getDaily() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text(local.lbDaile),
                value: _dailyCheck,
                onChanged: (newValue) {
                  _dailyCheck = newValue;
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 18),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey[400], width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      getMedcineInfoNames(local.lbNumberofTimes),
                      getMedDuratio(4),
                      getMedStartDate(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//for card 4 daily, 5 others
  Widget getMedDuratio(int forCard) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("For"),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.blueGrey[400], width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: FlatButton(
                  onPressed: () {
                    showMaterialNumberPicker(
                      context: context,
                      title: "Pick Number of days",
                      maxNumber: 200,
                      minNumber: 1,
                      selectedNumber: numberOfDays,
                      onChanged: (value) =>
                          setState(() => numberOfDays = value),
                    );
                  },
                  child: Text(numberOfDays.toString())),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(6),
          child: Text("Day"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Checkbox(
            onChanged: (value) {
              setState(() {
                forCard == 4
                    ? _forEverChecked = value
                    : _forEverOtherChecked = value;
              });
            },
            value: forCard == 4 ? _forEverChecked : _forEverOtherChecked,
          ),
        ),
        Text('For ever')
      ],
    );
  }

  Widget getMedStartDate() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Start Date"),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.blueGrey[400], width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: FlatButton(
                  onPressed: () {
                    showMaterialDatePicker(
                      context: context,
                      selectedDate: medicineDate,
                      onChanged: (value) =>
                          setState(() => medicineDate = value),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        DateFormat('yyyy-MM-dd').format(medicineDate),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.blueGrey[400], width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: FlatButton(
                  onPressed: () {
                    showMaterialTimePicker(
                      context: context,
                      selectedTime: medicineTime,
                      onChanged: (value) =>
                          setState(() => medicineTime = value),
                    );
                  },
                  child: Row(
                    children: [
                      Text(medicineTime.format(context)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Widget getOther() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text("other"),
                value: _otherCheck,
                onChanged: (newValue) {
                  _otherCheck = newValue;
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 18),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey[400], width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [getMedcineInfoNames("Every"), Text("Day")],
                      ),
                      getMedDuratio(5),
                      getMedStartDate(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _animatedHeight = 100.0;

  Widget getDoItByYourSelf() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Checkbox(
                        value: _doItByYourSelfCheck,
                        onChanged: (newValue) {
                          setState(() {
                            _doItByYourSelfCheck = newValue;
                          });
                        }),
                  ),
                  Text("Set dates"),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 24,
                      ),
                      onPressed: () {
                        showMaterialDatePicker(
                          context: context,
                          selectedDate: medicineDate,
                          onChanged: (datevalue) => showMaterialTimePicker(
                            context: context,
                            selectedTime: medicineTime,
                            onChanged: (timeValue) => setState(() => {
                                  medicineDate = datevalue,
                                  medicineTime = timeValue,
                                  medicineDate.add(new Duration(
                                    hours: timeValue.hour,
                                    minutes: timeValue.minute,
                                  )),
                                  myDates.add(medicineDate)
                                }),
                          ),
                        );
                      })
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 18),
                child: Column(
                  children: [
                    new AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      child: ListView.builder(
                          itemCount: myDates.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Text("Appointment number ${(index + 1)}"),
                                Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      border: Border.all(
                                          color: Colors.blueGrey[400],
                                          width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Center(
                                      child: Text(DateFormat('yyyy-MM-dd')
                                          .format(myDates[index])),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      border: Border.all(
                                          color: Colors.blueGrey[400],
                                          width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Center(
                                      child: Text((new TimeOfDay(
                                              hour: myDates[index].hour,
                                              minute: myDates[index].minute))
                                          .format(context)),
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                      height: _animatedHeight,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                    Center(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _animatedHeight != 0.0
                                ? _animatedHeight = 0.0
                                : _animatedHeight = 100.0;
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up),
                      ),
                    )
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
