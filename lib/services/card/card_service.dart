import 'package:flutter_base/services/service_base.dart';
import 'package:repository/repositories/card.dart';

class CardService extends ServiceBase {
  final Map<String, Function> _actionMap = {
    'get': CardRepositories.get,
    'create': CardRepositories.create,
    'getDetail': CardRepositories.getDetail,
    'update': CardRepositories.update,
    'delete': CardRepositories.detele,
  };

  Future<Map<String, dynamic>> get() async {
    Map<String, dynamic> data = {}; // Dữ liệu gửi đi (nếu có).
    return await callApi(_actionMap['get'], data);
  }

  Future<Map<String, dynamic>> create(data) async {
    Map<String, dynamic> data = {}; // Dữ liệu gửi đi (nếu có).
    return await callApi(_actionMap['create'], data);
  }

  Future<Map<String, dynamic>> getDetail(data) async {
    return await callApi(_actionMap['getDetail'], data);
  }

  Future<Map<String, dynamic>> update(data) async {
    return await callApi(_actionMap['update'], data);
  }

  Future<Map<String, dynamic>> delete(data) async {
    return await callApi(_actionMap['delete'], data);
  }
}
