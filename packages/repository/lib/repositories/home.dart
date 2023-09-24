import 'package:repository/config/repo_base.dart';

import '../config/configs.dart';

class HomeRepositories {
  static Future<dynamic> getData(data, Map<String, String>? headers) async {
    return await RepositoryBase.callApi(Method.get, Urls.DATA, null, headers);
  }
}
