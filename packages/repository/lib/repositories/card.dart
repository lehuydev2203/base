import 'package:repository/config/repo_base.dart';
import '../config/configs.dart';

class CardRepositories {
  static Future<dynamic> get(data, [Map<String, String>? headers]) async {
    return await RepositoryBase.callApi(Method.get, Urls.CODE, null, headers!);
  }

  static Future<dynamic> create(data, [Map<String, String>? headers]) async {
    return await RepositoryBase.callApi(
        Method.post, Urls.CODE_CREATE, data, headers!);
  }

  static Future<dynamic> getDetail(data, [Map<String, String>? headers]) async {
    if (data != null) {
      int id = data['id'] ?? '';
      return await RepositoryBase.callApi(
          Method.get, '${Urls.CODE_DETAIL}?id=$id', null, headers!);
    } else {
      return {
        'status': 0,
        'data': {'message': 'Not found id'}
      };
    }
  }

  static Future<dynamic> update(data, [Map<String, String>? headers]) async {
    return await RepositoryBase.callApi(
        Method.post, Urls.CODE_UPDATE, data, headers!);
  }

  static Future<dynamic> detele(data, [Map<String, String>? headers]) async {
    return await RepositoryBase.callApi(
        Method.delete, Urls.CODE_UPDATE, data, headers!);
  }
}
