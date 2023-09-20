import 'package:flutter/material.dart';
import 'package:flutter_base/model/models.dart';

class HomeViewModel with ChangeNotifier {
  final HomeModel _model;

  HomeViewModel(this._model);

  List<Product> get getData => _model.products;

  void get(context) async {
    await _model.get();
    notifyListeners();
  }
}
