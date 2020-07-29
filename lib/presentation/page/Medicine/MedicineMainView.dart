import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:honey/Core/lang/localss.dart';

class MedicineMainView extends StatefulWidget {
  @override
  _MedicineMainViewState createState() => _MedicineMainViewState();
}

class _MedicineMainViewState extends State<MedicineMainView> {
  TextEditingController patientNameController = TextEditingController();

  TextEditingController medicineNameController = TextEditingController();
  AppLocalizations local = AppLocalizations();

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
          children: <Widget>[getBasicInfo(), getMedicineInfo()],
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: Colors.blueGrey[400], width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
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
                        Text(speed),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
