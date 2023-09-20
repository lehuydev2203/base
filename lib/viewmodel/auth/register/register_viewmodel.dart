import 'package:flutter/foundation.dart';
import 'package:flutter_base/model/auth/register_model.dart';

class RegisterViewModel with ChangeNotifier {
  final RegisterModel _model;

  RegisterViewModel(this._model);

  String get username => _model.getUsername();
  String get password => _model.getPassword();

  void setEmail(String? value) {
    _model.setUsername(value);
    notifyListeners();
  }

  void setPassword(String? value) {
    _model.setPassword(value);
    notifyListeners();
  }

  void submit() {
    _model.submit();
    notifyListeners();
  }
}
