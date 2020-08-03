import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/LocalData.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

class MedicineLocalDataSource extends MedicineDataSource {
  final medicineLocalKey = "Medicine";
  @override
  Future<MedicineModel> medicine() async {
    MedicineModel medicineModel =
        await LocalData().getLocalStorage().getItem(medicineLocalKey);
    if (medicineModel != null) {
      return medicineModel;
    }
    throw (ExceptionWithMessageOnly("No Data Found"));
  }
}
