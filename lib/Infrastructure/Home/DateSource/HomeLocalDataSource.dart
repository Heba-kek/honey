import 'dart:convert';

import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeLocalDataSource extends HomeDataSource {
  final getHomeKey = "getHomeKey";
  @override
  Future<HomeModel> getHome() async {
    var preferences = await SharedPreferences.getInstance();
    var jsonString = preferences.get(getHomeKey);
    print("Model $jsonString");
    if (jsonString != null) {
      return Future.value(HomeModel.fromJson(json.decode(jsonString)));
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }

  Future<void> cacheHome(HomeModel model) async {
    var preferences = await SharedPreferences.getInstance();
    return preferences.setString(
      getHomeKey,
      json.encode(model.toJson()),
    );
  }
}
