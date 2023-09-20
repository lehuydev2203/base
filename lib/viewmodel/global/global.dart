import 'package:flutter/material.dart';
import 'package:flutter_base/model/models.dart';

class GlobalViewModel extends ChangeNotifier {
  final GlobalModel _model;

  GlobalViewModel(this._model);

  void checkSessionUser(context) async {
    await _model.checkSessionUser();
    // notifyListeners();
  }
}
