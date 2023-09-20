import '../config/configs.dart';

class HomeRepositories {
  static Future<dynamic> getData(data) async {
    return await Server.get(Urls.DATA.toString(), headers: data);
  }
}
