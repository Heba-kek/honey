import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';

abstract class ExpenDataSource {
  Future<ExpenModel> getExpenList(Map<String, dynamic> data);
}
