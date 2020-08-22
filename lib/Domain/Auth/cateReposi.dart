
import 'package:honey/Infrastructure/Expensive/Model/cateModel.dart';

abstract class IconRepository {
  Future<IconsModel> getIconExpen(Map<String, dynamic> data);
}
