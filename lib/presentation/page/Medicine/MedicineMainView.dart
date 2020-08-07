import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Medicine/Entities/Medicine/MedicineEntity.dart';
import 'package:honey/application/Medicine/bloc.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:intl/date_symbol_data_local.dart';

class MedicineMainView extends StatefulWidget {
  @override
  _MedicineMainViewState createState() => _MedicineMainViewState();
}

class _MedicineMainViewState extends State<MedicineMainView> {
  MedicineBloc _medicineBloc;

  TextEditingController patientNameController = TextEditingController();

  TextEditingController medicineNameController = TextEditingController();
  TextEditingController doctorNameController = TextEditingController();

  TextEditingController conditionNameController = TextEditingController();
  AppLocalizations local = AppLocalizations();

  bool _whenNecessaryCheck = false;
  bool _dailyCheck = false;
  bool _otherCheck = false;
  bool _forEverChecked = false;
  bool _forEverOtherChecked = false;
  bool _doItByYourSelfCheck = false;
  bool _insertImage = true;

  var numberOfDays = 0;
  var medicineDate = DateTime.now();
  var medicineTime = TimeOfDay.now();
  DateFormat dateFormat;

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
  void initState() {
    super.initState();
    _medicineBloc = new MedicineBloc();
    initializeDateFormatting();
    dateFormat = new DateFormat('yyyy-MM-dd', "en");
  }

  @override
  void dispose() {
    super.dispose();
    _medicineBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return getScaffoldBody();

    //  Scaffold(
    //     backgroundColor: Colors.yellow,
    //     appBar: AppBar(
    //       title: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           Text(
    //             "Honey Bee",
    //             style: TextStyle(color: Colors.black),
    //           ),
    //           Text(local.lbmedicine, style: TextStyle(color: Colors.black)),
    //           Container(
    //             child: Image.asset("assets/images/logo_new.png"),
    //             height: 30,
    //             width: 30,
    //           ),
    //         ],
    //       ),
    //       backgroundColor: Colors.yellow,
    //       elevation: 0,
    //       centerTitle: true,
    //     ),
    //     body: getScaffoldBody());
  }

  Widget getScaffoldBody() {
    return StreamBuilder<MedicineState>(
        stream: _medicineBloc.mapEventToState(new GetMedicine()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(
              child: Center(
                child: Text(snapshot.error),
              ),
            );
          } else if (snapshot.hasData) {
            var data = snapshot.data;
            if (data is Loaded) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    getBasicInfo(),
                    getMedicineInfo(data.medicineResponse.data),
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
                    getInsertImage(),
                    getReminder(),
                    getDoctorInfo(),
                    getSaveButton(),
                  ],
                ),
              );
            } else if (data is Error) {
              return Container(
                child: Center(
                  child: Text(data.message),
                ),
              );
            } else {
              return progressWidget();
            }
          } else {
            return Container();
          }
        });
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

  Widget getMedicineInfo(MedicineData data) {
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
              getMedcineInfoNames(local.lbMedicineShape, data.dose, 1),
              getMedcineInfoNames(local.lbdose, null, 2),
              getMedcineInfoNames(local.lbInstruction, data.instruction, 3),
            ],
          ),
        ),
      ),
    );
  }

  //1 dose type, 2 dose count, 3 instruction, 4 daily number of times, 5 reminder before, 6 evryDayCount
  String selectedDose;
  int selectedDoseCount;
  String selectedInstruction;
  int selectedDailyNumberOfTimes;
  int selectedReminderBeforeValue;
  int selectedEveryDayValue;
  Widget getMedcineInfoNames(
      String title, List<Appointment> dataSource, int type) {
    if (type == 1) {
      if (selectedDose == null) selectedDose = "Test";
    } else if (type == 2) {
      if (selectedDose == null) selectedDoseCount = 1;
    } else if (type == 3) {
      if (selectedInstruction == null) selectedInstruction = "";
    } else if (type == 4) {
      if (selectedDailyNumberOfTimes == null) selectedDailyNumberOfTimes = 1;
    } else if (type == 5) {
      if (selectedReminderBeforeValue == null) selectedReminderBeforeValue = 15;
    } else if (type == 6) {
      if (selectedEveryDayValue == null) selectedEveryDayValue = 1;
    }
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
                  type != 2 && type != 4 && type != 5 && type != 6
                      ? showMaterialSelectionPicker(
                          headerColor: Colors.yellow,
                          context: context,
                          title: type == 1 ? "Dose" : "Instruction",
                          items: dataSource.map((e) => e.name).toList(),
                          selectedItem:
                              type == 1 ? selectedDose : selectedInstruction,
                          onChanged: (value) => setState(() => type == 1
                              ? selectedDose = value
                              : selectedInstruction = value),
                        )
                      : showMaterialNumberPicker(
                          context: context,
                          title: type == 2
                              ? "Pick Your dose count"
                              : type == 4
                                  ? "Pick daily number of times"
                                  : type == 5
                                      ? "Pick reminder as minutes"
                                      : "Pick Daily value",
                          maxNumber: 100,
                          minNumber: 1,
                          selectedNumber: type == 2
                              ? selectedDoseCount
                              : type == 4
                                  ? selectedDailyNumberOfTimes
                                  : type == 5
                                      ? selectedReminderBeforeValue
                                      : selectedEveryDayValue,
                          onChanged: (value) => setState(() => type == 2
                              ? selectedDoseCount = value
                              : type == 4
                                  ? selectedDailyNumberOfTimes = value
                                  : type == 5
                                      ? selectedReminderBeforeValue = value
                                      : selectedEveryDayValue = value),
                        );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(type == 1
                          ? selectedDose
                          : type == 2
                              ? selectedDoseCount.toString()
                              : type == 3
                                  ? selectedInstruction
                                  : type == 4
                                      ? selectedDailyNumberOfTimes.toString()
                                      : selectedReminderBeforeValue.toString()),
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
            color: _whenNecessaryCheck ? Colors.white : Colors.grey[300],
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
                _dailyCheck = false;
                _otherCheck = false;
                _doItByYourSelfCheck = false;
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
            color: _dailyCheck ? Colors.white : Colors.grey[300],
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
                  setState(() {
                    _dailyCheck = newValue;
                    _whenNecessaryCheck = false;
                    _otherCheck = false;
                    _doItByYourSelfCheck = false;
                  });
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
                      getMedcineInfoNames(local.lbNumberofTimes, null, 4),
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
                        dateFormat.format(medicineDate),
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
            color: _otherCheck ? Colors.white : Colors.grey[300],
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
                  setState(() {
                    _otherCheck = newValue;
                    _whenNecessaryCheck = false;
                    _dailyCheck = false;
                    _doItByYourSelfCheck = false;
                  });
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
                        children: [
                          getMedcineInfoNames("Every", null, 6),
                          Text("Day")
                        ],
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
            color: _doItByYourSelfCheck ? Colors.white : Colors.grey[300],
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
                            _whenNecessaryCheck = false;
                            _dailyCheck = false;
                            _otherCheck = false;
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
                                      child: Text(
                                          new DateFormat('yyyy-MM-dd', "en")
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
                      height: myDates.length > 0 ? _animatedHeight : 0,
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

  Widget getInsertImage() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: _insertImage ? Colors.white : Colors.grey[300],
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
            children: [
              CheckboxListTile(
                title: Text("Insert Image"),
                value: _insertImage,
                onChanged: (newValue) {
                  setState(() {
                    _insertImage = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 44,
                        color: Colors.blue[800],
                      ),
                      onPressed: () {
                        pickImageFromGallery(ImageSource.camera);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 5,
                      height: MediaQuery.of(context).size.width * 0.45 - 32,
                      color: Colors.blue[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: showImage(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<File> imageFile;

  //Open gallery
  pickImageFromGallery(ImageSource source) {
    setState(() {
      // ignore: deprecated_member_use
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.width * 0.45 - 50,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  Widget getReminder() {
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/bell.png"),
                  ),
                  getMedcineInfoNames("Remind before", null, 5),
                ],
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Image.asset("assets/images/bell.png"),
              //     ),
              //     getMedcineInfoNames("Ring Tone"),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getDoctorInfo() {
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
              getName("Doctor Name", doctorNameController),
              getName("Condtion", conditionNameController),
            ],
          ),
        ),
      ),
    );
  }

  Widget getSaveButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: FlatButton(
            child: Text("Save"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
