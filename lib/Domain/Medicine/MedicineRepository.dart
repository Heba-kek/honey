import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

abstract class MedicineRepository {
  Future<MedicineModel> medicine();
}
