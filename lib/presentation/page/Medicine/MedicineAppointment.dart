import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/presentation/page/Medicine/Component/MedicineNameWidget.dart';

class MedicineAppointment extends StatefulWidget {
  @override
  _MedicineAppointmentState createState() => _MedicineAppointmentState();
}

class _MedicineAppointmentState extends State<MedicineAppointment> {
  AppLocalizations local = AppLocalizations();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.yellow[700],
            Colors.yellow[600],
            Colors.yellow[500],
            Colors.yellow[300],
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
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
            backgroundColor: Colors.transparent,
            elevation: 1,
            centerTitle: true,
          ),
          body: getScaffoldBody()),
    );
  }

  var names = ["Test", "Test1", "Test2"];
  var selectedName;
  Widget getScaffoldBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
                child: Container(
                  height: 125,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Patient Name drop down
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 44,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.white, width: 2),
                              color: Colors.grey[350],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    value: selectedName,
                                    isExpanded: false,
                                    icon: Icon(Icons.arrow_downward),
                                    elevation: 16,
                                    items: <String>[
                                      'One',
                                      'Two',
                                      'Free',
                                      'Four'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,
                                            textAlign: TextAlign.center),
                                      );
                                    }).toList(),
                                    onChanged: (String newValue) {
                                      print(newValue);
                                      setState(() {
                                        selectedName = newValue;
                                      });
                                    }),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Medicine log button
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 44,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.white, width: 2),
                              color: Colors.grey[350],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: FlatButton(
                              child: Text("Medicine Log"),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Add button
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        shape: BoxShape.circle),
                    child: FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.add,
                        size: 44,
                        color: Colors.blueGrey,
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          MedicineNameWidget(
            title: "Test",
          ),
        ],
      ),
    );
  }
}
