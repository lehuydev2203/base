import 'package:flutter_base/model/base_model.dart';
import 'package:flutter_base/services/services.dart';

class SettingModel extends BaseModel {
  Future<bool> logout() async {
    var res = await Services.auth.logout();
    if (res['status'] == 1) {
      isLogin = false;
      return true;
    }

    return false;
  }
}
