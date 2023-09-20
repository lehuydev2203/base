import 'package:flutter_base/model/base_model.dart';
import 'package:flutter_base/services/services.dart';
import 'package:flutter_base/utils/enum.dart';
import 'package:flutter_base/utils/store.dart';

class GlobalModel extends BaseModel {
  Future<bool> checkSessionUser() async {
    var res = await Store.getString(Stores.token);
    if (res != null) {
      await Services.base.setToken(res);
      isLogin = true;
      return true;
    }

    return isLogin;
  }
}
