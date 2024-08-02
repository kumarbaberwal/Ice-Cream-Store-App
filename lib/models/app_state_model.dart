import 'package:flutter/material.dart';
import 'package:icecreamlovers/data/product_repo.dart';
import 'package:icecreamlovers/models/ice_cream_data.dart';
import 'package:icecreamlovers/models/product.dart';

double _salesTaxRate = 0.18;
double _shippingCostPerItem = 10;

class AppStateModel extends ChangeNotifier {
  int currentIndex = 0;
  List<Icecreams> _availableProducts = [];

  final _productsInCart = <int, int>{};

  List<Product> get availableProducts {
    return List.from(_availableProducts);
  }

  Map<int, int> get productsInCart {
    return Map.from(_productsInCart);
  }

  double get shippingCost {
    return _shippingCostPerItem *
        _productsInCart.values.fold(0, (sum, value) => sum + value);
  }

  double get subTotalCost {
    return _productsInCart.keys
        .map((e) => _availableProducts[e].price! * _productsInCart[e]!)
        .fold(0, (sum, value) => sum + value);
  }

  double get tax {
    return subTotalCost * _salesTaxRate;
  }

  int get totalCartQuantity {
    return _productsInCart.values.fold(0, (sum, value) => sum + value);
  }

  double get totalCost {
    return subTotalCost + shippingCost + tax;
  }

  void addProductToCart(int productId) {
    if (!productsInCart.containsKey(productId)) {
      _productsInCart[productId] = 1;
    } else {
      _productsInCart[productId] = _productsInCart[productId]! + 1;
    }
    notifyListeners();
  }

  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void clearCart() {
    _productsInCart.clear();
    notifyListeners();
  }

  Icecreams getProductById(int id) {
    return _availableProducts.firstWhere(
      (element) => element.id == id,
    );
  }

  List<Icecreams> getProducts() {
    return _availableProducts;
  }

  Future<dynamic> loadProducts() async {
    _availableProducts = await ProductRepo.getIceCreams();
    notifyListeners();
  }

  void removeItemFromCart(int productId) {
    if (productsInCart[productId] == 1) {
      productsInCart.remove(productId);
    } else {
      productsInCart[productId] = productsInCart[productId]! - 1;
    }
    notifyListeners();
  }

  List<Icecreams> search(String query) {
    return _availableProducts
        .where((product) =>
            product.flavor!.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
