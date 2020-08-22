

import 'package:honey/Infrastructure/Expensive/Model/subExpenModel.dart';

abstract class expSubRepository {
  Future<ExpenSubModel> getCateExpenSub(Map<String, dynamic> data);
}
