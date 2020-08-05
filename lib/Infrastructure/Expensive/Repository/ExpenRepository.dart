import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';
import 'package:honey/domain/Auth/ExpenReposi.dart';



//check connection and call from appropriate source
class ExpenRepositoryImpl extends expRepository {
  final ExpenRemoteDataSource ExpensRemoteDataSource;
  final NetworkInfo networkInfo;

  ExpenRepositoryImpl(this.ExpensRemoteDataSource, this.networkInfo);

  @override
  Future<ExpenModel> getCateExpen(Map<String, dynamic> data) async {
    //here we do not check for network info, we just need to call the live API
    if (await networkInfo.isConnected) {
      print("Calling signin remote DataSource");
      return ExpensRemoteDataSource.getExpenList(data);
    } else {
      throw FetchDataException('No Internet connection');
    }
  }
}
