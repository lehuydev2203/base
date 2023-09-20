import 'package:flutter_base/model/base_model.dart';
import 'package:flutter_base/services/services.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final int price;
  final String status;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.status});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? '',
      status: json['status'] ?? '',
    );
  }
}

class HomeModel extends BaseModel {
  List<Product> products = [];

  Future<List<Product>> get() async {
    Map<String, dynamic> res = await Services.home.get();
    if (res['status'] == 1) {
      List<dynamic> dataDynamic = res["data"];
      List<Product> data = dataDynamic.map((e) => Product.fromJson(e)).toList();
      products = data;
    }
    return products;
  }
}
