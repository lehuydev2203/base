import 'package:flutter_base/model/base_model.dart';
import 'package:flutter_base/services/services.dart';

class RegisterModel extends BaseModel {
  String username = "";
  String password = "";

  getUsername() => username;
  getPassword() => password;

  void setUsername(String? value) {
    username = value!;
  }

  void setPassword(String? value) {
    password = value!;
  }

  void submit() async {
    var res = await Services.auth.register(username, password);
    if (res['status'] == 1) {
      isSuccess = true;
      isError = false;
    } else {
      isError = true;
      isSuccess = false;
    }
  }
}
