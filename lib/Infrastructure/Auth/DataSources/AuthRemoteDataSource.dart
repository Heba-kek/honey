//call functions from server
import 'package:honey/Infrastructure/Auth/DataSources/AuthDataSource.dart';
import 'package:honey/Infrastructure/Auth/Models/SigninModel.dart';
import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';

class AuthRemoteDataSource implements AuthDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<SigninModel> signin(Map<String, dynamic> data) async {
    final response = await _provider.fetchData(
        method: HttpMethod.POST, url: APINames.login, bodyData: data);

    return SigninModel.fromJson(response);
  }
}
