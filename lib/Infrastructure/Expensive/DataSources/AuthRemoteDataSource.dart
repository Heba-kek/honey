//call functions from server
import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthDataSource.dart';

import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';

class ExpenRemoteDataSource implements ExpenDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<ExpenModel> getExpenList(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getExpenListCate, bodyData: data);

    return ExpenModel.fromJson(response);
  }
}
