import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Models/MedicineModel.dart';

class MedicineRemoteDataSource extends MedicineDataSource {
  ApiProvider _provider = ApiProvider();
  @override
  Future<MedicineModel> medicine() async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.medicine, bodyData: {});

    return MedicineModel.fromJson(response);
  }
}
