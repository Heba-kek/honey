import 'package:honey/Infrastructure/Auth/Models/SigninModel.dart';

abstract class AuthDataSource {
  Future<SigninModel> signin(Map<String, dynamic> data);
}
