import 'package:icecreamlovers/models/product.dart';

class IceCreamData {
  List<Icecreams>? icecreams;

  IceCreamData({this.icecreams});

  IceCreamData.fromJson(Map<String, dynamic> json) {
    if (json['icecreams'] != null) {
      icecreams = <Icecreams>[];
      json['icecreams'].forEach((v) {
        icecreams!.add(Icecreams.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icecreams != null) {
      data['icecreams'] = icecreams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Icecreams extends Product {
  int? id;
  String? category;
  String? flavor;
  String? description;
  List<String>? toppings;
  int? price;
  String? image;
  List<String>? ingredients;

  Icecreams(
      {this.id,
      this.category,
      this.flavor,
      this.description,
      this.toppings,
      this.price,
      this.image,
      this.ingredients});

  Icecreams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    flavor = json['flavor'];
    description = json['description'];
    toppings = json['toppings'].cast<String>();
    price = json['price'];
    image = json['image'];
    ingredients = json['ingredients'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category'] = category;
    data['flavor'] = flavor;
    data['description'] = description;
    data['toppings'] = toppings;
    data['price'] = price;
    data['image'] = image;
    data['ingredients'] = ingredients;
    return data;
  }
}
