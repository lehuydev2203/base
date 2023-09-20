import 'package:flutter_base/model/base_model.dart';
import 'package:flutter_base/services/services.dart';

class LoginModel extends BaseModel {
  String account = "";
  String password = "";

  String getAccount() => account;
  String getPassword() => password;

  void setAccount(String? value) {
    account = value!;
  }

  void setPassword(String? value) {
    password = value!;
  }

  Future<bool> submit() async {
    var res = await Services.auth.login(account, password);
    if (res['status'] == 1) {
      return true;
    }

    return false;
  }
}
