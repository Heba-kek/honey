
import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';

abstract class expRepository {
  Future<ExpenModel> getCateExpen(Map<String, dynamic> data);
}
