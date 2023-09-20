import 'package:flutter/material.dart';
import 'package:flutter_base/model/models.dart';

class SplashViewModel with ChangeNotifier {
  final SplashModel _model;

  SplashViewModel(this._model);

  Future<bool> get isExits async => _model.getisLogin();

  Future<bool> checkSession() async {
    bool isValids = await _model.checkSessionUser();
    notifyListeners();
    return isValids;
  }
}
