import 'package:honey/Domain/Auth/AuthRepository.dart';
import 'package:honey/Infrastructure/Auth/DataSources/AuthRemoteDataSource.dart';
import 'package:honey/Infrastructure/Auth/Models/SigninModel.dart';
import 'package:honey/Infrastructure/Core/CustomException.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';

//check connection and call from appropriate source
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(this.authRemoteDataSource, this.networkInfo);

  @override
  Future<SigninModel> signin(Map<String, dynamic> data) async {
    //here we do not check for network info, we just need to call the live API
    if (await networkInfo.isConnected) {
      print("Calling signin remote DataSource");
      return authRemoteDataSource.signin(data);
    } else {
      throw FetchDataException('No Internet connection');
    }
  }
}
