import 'package:repository/config/repoBase.dart';
import '../config/configs.dart';

class CardRepositories {
  static Future<dynamic> get(data, [Map<String, String>? headers]) async {
    print('get');
    return await RepositoryBase.callApi(Method.get, Urls.CODE, null, headers!);
  }

  static Future<dynamic> create(data, [Map<String, String>? headers]) async {
    print('create code');
    return await RepositoryBase.callApi(
        Method.post, Urls.CODE_CREATE, data, headers!);
  }

  static Future<dynamic> getDetail(data, [Map<String, String>? headers]) async {
    print('get detail');
    print('get detail');
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
    print('update code');

    return await RepositoryBase.callApi(
        Method.post, Urls.CODE_UPDATE, data, headers!);
  }

  static Future<dynamic> detele(data, [Map<String, String>? headers]) async {
    print('delete code');
    return await RepositoryBase.callApi(
        Method.delete, Urls.CODE_UPDATE, data, headers!);
  }
}
