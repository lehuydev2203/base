import 'package:flutter_base/model/base_model.dart';
import 'package:flutter_base/services/services.dart';

class Cards {
  final int id;
  final String name;
  final String code;

  Cards({
    required this.id,
    required this.name,
    required this.code,
  });

  factory Cards.fromJson(Map<String, dynamic> json) {
    return Cards(
      id: json['id'] ?? 0,
      name: json['name_code'] ?? '',
      code: json['code'] ?? '',
    );
  }
}

class CardModel extends BaseModel {
  List<Cards> cards = [];
  Cards? card;

  Future<List<Cards>> get() async {
    print('Mode; object get');
    Map<String, dynamic> res = await Services.card.get();
    print('Res model: $res');
    if (res['status'] == 1) {
      List<dynamic> dataDynamic = res["data"];
      List<Cards> data = dataDynamic.map((e) => Cards.fromJson(e)).toList();
      cards = data;
    }
    return cards;
  }

  Future<dynamic> create(data) async {
    print('Mode; object create');
    Map<String, dynamic> res = await Services.card.create(data);
    if (res['status'] == 1) {
      return true;
    }
    return false;
  }

  Future<Cards?> getDetail(id) async {
    print('Mode; object detail');

    Map<String, dynamic> res = await Services.card.getDetail({'id': id});
    print('Res model: $res');
    if (res['status'] == 1) {
      return card = Cards(
          code: res['data']['code'],
          id: res['data']['id'],
          name: res['data']['name_code']);
    }
    return card = null;
  }

  Future<dynamic> update(data) async {
    print('Mode; object update');
    Map<String, dynamic> res = await Services.card.update(data);
    if (res['status'] == 1) {}
  }
}
