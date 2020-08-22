import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Expensive/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Expensive/Model/ExpenModel.dart';
import 'package:honey/Infrastructure/Expensive/Model/subExpenModel.dart';
import 'package:honey/domain/Auth/subExpenRepository.dart';



//check connection and call from appropriate source
class ExpenRepositorySubImpl extends expSubRepository {
  final ExpenRemoteDataSource ExpensRemoteDataSource;
  final NetworkInfo networkInfo;
  final String catId;

  ExpenRepositorySubImpl(this.ExpensRemoteDataSource, this.networkInfo,this.catId);

  @override
  Future<ExpenSubModel> getCateExpenSub(Map<String, dynamic> data) async {
    //here we do not check for network info, we just need to call the live API
    if (await networkInfo.isConnected) {
      print("Calling signin remote DataSource");
      return ExpensRemoteDataSource.getSubExp(data,catId);
    } else {
      throw FetchDataException('No Internet connection');
    }
  }
}
