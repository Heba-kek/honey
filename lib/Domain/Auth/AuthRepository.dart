import 'package:honey/Infrastructure/Auth/Models/SigninModel.dart';

abstract class AuthRepository {
  Future<SigninModel> signin(Map<String, dynamic> data);
}
