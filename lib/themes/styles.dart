import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle productRowPrice = TextStyle(
    color: Color(0xff8e8e93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle deliveryTimeLabel = TextStyle(
    color: Color(0xffc2c2c2),
    fontWeight: FontWeight.w300,
  );
  static const TextStyle deliveryTime = TextStyle(
    color: Colors.grey,
  );
}
