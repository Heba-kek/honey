import 'package:honey/Domain/Medicine/MedicineRepository.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineRemoteDataSource.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedinceLocalDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

class MedicineRepositoryIMPL extends MedicineRepository {
  final MedicineRemoteDataSource medicineRemoteDataSource;
  final MedicineLocalDataSource medicineLocalDataSource;
  final NetworkInfo networkInfo;

  MedicineRepositoryIMPL(this.medicineRemoteDataSource,
      this.medicineLocalDataSource, this.networkInfo);

  @override
  Future<MedicineModel> medicine() async {
    if (await networkInfo.isConnected) {
      print("fetch remote medicine data");
      MedicineModel medicineModel = await medicineRemoteDataSource.medicine();
      if (medicineModel.code == "1") {
        print("Saving data to local");

        medicineLocalDataSource.cacheMedicine(medicineModel);
      }

      return medicineModel;
    } else {
      print("fetch local medicine data");
      return medicineLocalDataSource.medicine();
    }
  }
}
