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
    print('VM get');
    notifyListeners();
  }

  void create(context) async {
    print('VM create');
    // await _model.get();
    // notifyListeners();
  }

  void detail(context, id) async {
    print('VM detail');
    await _model.getDetail(id);
    notifyListeners();
    var res = _model.card;
    print('VM detail: $res');
    if (res?.id != null) {
      await Navigator.pushReplacementNamed(context, RoutesName.CARD_DETAIL);
    }
  }

  void update(context) async {
    print('VM update');
    // await _model.get();
    // notifyListeners();
  }
}
