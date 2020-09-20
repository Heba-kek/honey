import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Model/cateModel.dart';
import 'package:honey/domain/Auth/cateReposi.dart';

//check connection and call from appropriate source
class IconRepositoryImpl extends IconRepository {
  final ExpenRemoteDataSource ExpensRemoteDataSource;
  final NetworkInfo networkInfo;

  IconRepositoryImpl(this.ExpensRemoteDataSource, this.networkInfo);

  @override
  Future<IconsModel> getIconExpen(Map<String, dynamic> data) async {
    //here we do not check for network info, we just need to call the live API
    if (await networkInfo.isConnected) {
      print("Calling signin remote DataSource");
      return ExpensRemoteDataSource.getIconExp(data);
    } else {
      throw FetchDataException('No Internet connection');
    }
  }
}
