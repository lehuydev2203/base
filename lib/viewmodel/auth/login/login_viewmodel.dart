import 'package:flutter/material.dart';
import 'package:flutter_base/model/models.dart';
import 'package:flutter_base/screens/screens.dart';

class LoginViewModel with ChangeNotifier {
  final LoginModel _model;

  LoginViewModel(this._model);

  String get account => _model.getAccount();
  String get password => _model.getPassword();

  void setAccount(String? value) {
    _model.setAccount(value);
    notifyListeners();
  }

  void setPassword(String? value) {
    _model.setPassword(value);
    notifyListeners();
  }

  void submit(context) async {
    var isResult = await _model.submit();

    if (isResult) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const Mainview(),
        ),
        (route) => false,
      );
    }

    notifyListeners();
  }
}
