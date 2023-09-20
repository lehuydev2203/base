import 'package:flutter/material.dart';
import 'package:flutter_base/model/models.dart';
import 'package:flutter_base/router/router_name.dart';

class SettingViewModel with ChangeNotifier {
  final SettingModel _model;

  SettingViewModel(this._model);

  void logout(context) async {
    var isResult = await _model.logout();
    if (isResult) {
      Navigator.of(context).popAndPushNamed(RoutesName.LOGIN);
    }
    notifyListeners();
  }
}
