import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Extension/ColorExtension.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';

import 'package:honey/Domain/Auth/Entities/ExpenAntity.dart';
import 'package:honey/Domain/Auth/ExpenReposi.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/ExpensesLocalDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Repository/ExpenRepository.dart';
import 'package:honey/application/Auth/blocExp.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Expenses/Component/Category.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewExpensesScreen extends StatefulWidget {
  @override
  _NewExpensesScreenState createState() => _NewExpensesScreenState();
}

class _NewExpensesScreenState extends State<NewExpensesScreen> {
  AppLocalizations locale = AppLocalizations();
  ExpBloc bloc;
  String id;
  List<bool> isCheckedCategory;
  var customList;
  @override
  void initState() {
    bloc = ExpBloc(ExpenRepositoryImpl(
      ExpenRemoteDataSource(),
      NetworkInfoImpl(DataConnectionChecker()),
      ExpensesLocalDataSource(),
    ));
    getValueString();
    super.initState();
  }

  getValueString() async {
    var preferences = await SharedPreferences.getInstance();
    //sessionId = preferences.getString('sessionId');
    id = preferences.getString('id');
    // tokene = preferences.getString('token');
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return customList == null
        ? StreamBuilder<ExpState>(
            stream: bloc.mapEventToState(ExpenEvent()),
            builder: (context, snapshot) {
              var state = snapshot.data;
              if (snapshot.hasData) {
                if (state is Loading) {
                  return progressWidget();
                } else if (state is Loaded) {
                  customList = state.ExpResponse.data;
                  print(customList);
                  isCheckedCategory = List<bool>.filled(
                      customList.length, false,
                      growable: true);
                  return getBody(customList);
                } else if (state is Error) {
                  return Center(
                    child: Text(state.message),
                  );
                }
              } else {
                return Center(
                    child: Text("Please check your internet connection"));
              }
              return Container(
                child: Text("test"),
              );
            })
        : getBody(customList);
  }

  Widget getBody(var list) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              locale.lbchooseExpensesCategory,
              style:
                  TextStyle(color: HexColor.fromHex("#707070"), fontSize: 16),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Category(
                      isChecked: isCheckedCategory[index],
                      // editIcon:
                      //  Icon(
                      //   Icons.edit,
                      //   color: HexColor.fromHex("#496E93"),
                      //   size: 24,
                      // ),
                      title: list[index].categoryName,
                      icon: Container(
                          height: 50,
                          width: 50,
                          child: Image.network(list[index].icon)),
                      onPressEdit: (value) {
                        setState(() {
                          isCheckedCategory[index] = value;
                        });
                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor.fromHex("#50D25A"),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: CustomColors.mainYellowColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Center(child: Text(locale.btnsubmit)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
