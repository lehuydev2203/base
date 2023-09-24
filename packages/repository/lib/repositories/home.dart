import 'package:repository/config/repoBase.dart';

import '../config/configs.dart';

class HomeRepositories {
  static Future<dynamic> getData(data, Map<String, String>? headers) async {
    return await RepositoryBase.callApi(Method.get, Urls.DATA, null, headers);
  }
}
