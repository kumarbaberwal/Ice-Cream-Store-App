import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:icecreamlovers/models/ice_cream_data.dart';

class ProductRepo {
  static Future<List<Icecreams>> getIceCreams() async {
    final response = await rootBundle.loadString("assets/icecreams.json");
    final icecreamData = IceCreamData.fromJson(jsonDecode(response));
    return icecreamData.icecreams!;
  }
}
