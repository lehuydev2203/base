// ignore: file_names
import 'package:flutter_base/services/service_base.dart';
import 'package:flutter_base/utils/enum.dart';
import 'package:flutter_base/utils/store.dart';
import 'package:repository/repositories/home.dart';

class HomeService extends ServiceBase {
  Future<Map<String, dynamic>> get() async {
    String? tokenKey = await Store.getString(Stores.token);

    if (tokenKey != null) {
      token = tokenKey;
      Map<String, String> data = {"Authorization": 'Bearer $tokenKey'};
      var res = await HomeRepositories.getData(null, data);
      return await handleApiResponse(res);
    }

    return {
      'status': 0,
      'data': {"message": "Not Permission access"}
    };
  }
}
