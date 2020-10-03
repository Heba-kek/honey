import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honey/Core/Extension/ColorExtension.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Auth/ExpenReposi.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/ExpensesLocalDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Repository/ExpenRepository.dart';
import 'package:honey/application/Auth/blocExp.dart';
import 'package:honey/presentation/page/Expenses/Component/Category.dart';

class NewExpensesScreen extends StatefulWidget {
  @override
  _NewExpensesScreenState createState() => _NewExpensesScreenState();
}

class _NewExpensesScreenState extends State<NewExpensesScreen> {
  AppLocalizations locale = AppLocalizations();
  ExpBloc bloc;

  @override
  void initState() {
    bloc = ExpBloc(ExpenRepositoryImpl(
      ExpenRemoteDataSource(),
      NetworkInfoImpl(DataConnectionChecker()),
      ExpensesLocalDataSource(),
    ));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ExpState>(
        stream: bloc.mapEventToState(ExpenEvent("1")),
        builder: (context, snapshot) {
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
                    style: TextStyle(
                        color: HexColor.fromHex("#707070"), fontSize: 16),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Category(
                            editIcon: Icon(
                              Icons.edit,
                              color: HexColor.fromHex("#496E93"),
                              size: 24,
                            ),
                            title: "Test",
                            icon: Icon(Icons.accessible),
                            onPressEdit: () {
                              print("test");
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
        });
  }
}
