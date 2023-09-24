import 'package:repository/config/repo_base.dart';
import '../config/configs.dart';

class AuthRepositories {
  static Future<dynamic> login(data) async {
    return await RepositoryBase.callApi(Method.post, Urls.AUTH_LOGIN, data);
  }

  static Future<dynamic> create(data) async {
    return await RepositoryBase.callApi(Method.post, Urls.AUTH_REGISTER, data);
  }
}
