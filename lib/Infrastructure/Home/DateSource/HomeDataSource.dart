import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';

abstract class HomeDataSource {
  Future<HomeModel> getHome();
}
