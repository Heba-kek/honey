import 'package:honey/Infrastructure/Core/APINames.dart';
import 'package:honey/Infrastructure/Core/Networking.dart';
import 'package:honey/Infrastructure/Revenue/DataSource/RevenueDataSource.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueCategoryModel.dart';
import 'package:honey/Infrastructure/Revenue/Models/RevenueModel.dart';

class RevenueRemoteDataSource extends RevenueDataSource {
  ApiProvider _provider = ApiProvider();
  @override
  Future<RevenueModel> getRevenues() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET, url: APINames.getRevenues, bodyData: {});

    return RevenueModel.fromJson(response);
  }

  @override
  Future<RevenueCategoryModel> getRevenueCategories() async {
    final response = await _provider.fetchData(
        method: HttpMethod.GET,
        url: APINames.getRevenueCategories,
        bodyData: {});

    return RevenueCategoryModel.fromJson(response);
  }
}
