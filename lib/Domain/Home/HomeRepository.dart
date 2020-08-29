import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';

abstract class HomeRepository {
  Future<HomeModel> getHome();
}
