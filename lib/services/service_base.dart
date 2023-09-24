// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter_base/utils/enum.dart';
import 'package:flutter_base/utils/store.dart';

class ServiceBase {
  late String? token;

  ServiceBase() {
    token = ''; // Initialize with an empty string or any default value you want
    _initToken();
  }

  void _initToken() async {
    await getToken();
  }

  Future<Map<String, dynamic>> handleApiResponse(Map<String, dynamic> res,
      [dynamic message]) async {
    if (res["status"] == 0) {
      return {'status': 0, 'data': res['data']};
    }

    return {
      'status': 1,
      'data': res['data'] ?? message ?? {"message": "Request Success"}
    };
  }

  Future<dynamic> getToken() async {
    String? token = await Store.getString(Stores.token);
    if (token != null) {
      token = token;
    }
  }

  Future<dynamic> setToken(String token) async {
    token = token;
  }

  Future<dynamic> callApi(Function? func, Map<String, dynamic> data) async {
    String? tokenKey = await Store.getString(Stores.token);

    if (tokenKey != null) {
      Map<String, String> headers = {"Authorization": 'Bearer $tokenKey'};
      if (kDebugMode) {
        print('Headers $headers');
      }

      if (func != null) {
        dynamic result = await func(data, headers);
        return await handleApiResponse(result);
      } else {
        return await handleApiResponse({
          'status': 0,
          'data': {'message': 'Unknown action'}
        });
      }
    }

    return {
      'status': 0,
      'data': {'message': 'Token is null'}
    };
  }
}
