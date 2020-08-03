import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

abstract class MedicineDataSource {
  Future<MedicineModel> medicine();
}
