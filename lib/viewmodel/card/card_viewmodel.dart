import 'package:flutter/material.dart';
import 'package:flutter_base/model/card/card_model.dart';
import 'package:flutter_base/router/router_name.dart';

class CardViewModel with ChangeNotifier {
  final CardModel _model;

  CardViewModel(this._model);

  List<Cards> get getCards => _model.cards;

  Cards? get getCard => _model.card;

  void readCard() async {
    
  }

  void get() async {
    await _model.get();
    notifyListeners();
  }

  void create(context) async {
    // await _model.get();
    notifyListeners();
  }

  void detail(context, id) async {
    await _model.getDetail(id);
    notifyListeners();
    var res = _model.card;
    if (res?.id != null) {
      await Navigator.pushReplacementNamed(context, RoutesName.CARD_DETAIL);
    }
  }

  void update(context) async {
    // await _model.get();
    notifyListeners();
  }
}
