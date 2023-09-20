import '../config/configs.dart';

class AuthRepositories {
  static Future<dynamic> login(data) async {
    return await Server.post(Urls.LOGIN.toString(), body: data);
  }
}
