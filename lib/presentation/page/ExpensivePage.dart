import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/ExpensesLocalDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Repository/ExpenRepository.dart';
import 'package:honey/application/Auth/blocExp.dart';
import 'package:honey/domain/Auth/Entities/ExpenAntity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class expensivePage extends StatefulWidget {
  @override
  _expensivePage createState() => new _expensivePage();
}

class _expensivePage extends State<expensivePage> {
  List<ExpenData> expList;
  String sessionId, id;
  var preferences;

  getValueString() async {
    preferences = await SharedPreferences.getInstance();
    sessionId = preferences.getString('sessionId');
    id = preferences.getString('id');
  }

  @override
  void initState() {
    getValueString();

    //  navigationPage();
  }

  @override
  Widget build(BuildContext context) {
    return new BlocProvider(
        create: (context) => ExpBloc(ExpenRepositoryImpl(
            ExpenRemoteDataSource(),
            NetworkInfoImpl(DataConnectionChecker()),
            ExpensesLocalDataSource())),
        child: signinView());
  }

  Widget signinView() {
    return BlocConsumer<ExpBloc, ExpState>(listener: (context, state) {
      if (state is Loaded) {
        print('Success');
        print(state.ExpResponse.data);
        expList = state.ExpResponse.data.exList;
        print(expList.length);
      }
    }, builder: (context, state) {
      if (state is Empty) {
        print('progress');
        context.bloc<ExpBloc>().add(ExpenEvent(id));
        return progressWidget();
      } else if (state is Loading) {
        print('progress');
        return progressWidget();
      } else if (state is Error) {
        print('Error');
        print(state.message);
        //show error with retry
      }

      return Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            expList == null
                ? Container()
                : Expanded(
                    child: ListView.builder(
                    itemCount: expList.length,
                    // Add one more item for progress indicator
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    itemBuilder: (BuildContext context, int index) {
                      return new Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: GestureDetector(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          expList[index]
                                              .category_Name
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    // controller: _sc,
                  ))
          ],
        ),
      );
    });
  }

  Widget progressWidget() {
    // jika masih proses kirim API
    return AlertDialog(
      content: new Row(
        children: <Widget>[CircularProgressIndicator(), Text("Please wait")],
      ),
    );
  }
}
