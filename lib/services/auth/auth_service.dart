// ignore: file_names
import 'package:flutter_base/services/service_base.dart';
import 'package:flutter_base/utils/enum.dart';
import 'package:flutter_base/utils/store.dart';
import 'package:repository/repositories/auth.dart';

class AuthService extends ServiceBase {
  
  Future<Map<String, dynamic>> login(String username, String password) async {
    var data = {"username": username, "password": password};
    var res = await AuthRepositories.login(data);
    var response = await handleApiResponse(res, {"message": "Login Success"});

    if (response["status"] == 1) {
      if (res['data'] != null) {
        var data = res['data'];
        final tokenKey = data['token'];
        await Store.setString(Stores.token, tokenKey);
        token = tokenKey;
      }
    }
    return response;
  }

  Future<Map<String, dynamic>> register(
      String username, String password) async {
    var data = {"username": username, "password": password};
    var res = await AuthRepositories.login(data);
    return await handleApiResponse(res);
  }

  Future<Map<String, dynamic>> logout() async {
    try {
      await Store.removeString(Stores.token);
    } catch (e) {
      return {"message": e};
    }

    return {
      'status': 1,
      'data': {"message": "Logout Success"}
    };
  }
}
