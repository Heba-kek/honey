import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Home/DateSource/HomeDataSource.dart';
import 'package:honey/Infrastructure/Home/Model/HomeModel.dart';

class HomeRemoteDataSource extends HomeDataSource {
  ApiProvider _provider = ApiProvider();

  @override
  Future<HomeModel> getHome() async {
    final response = await _provider
        .fetchData(method: HttpMethod.GET, url: APINames.getHome, bodyData: {});

    return HomeModel.fromJson(response);
  }
}
