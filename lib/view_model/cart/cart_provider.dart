import 'package:flutter/material.dart';
import '../../model/product_model.dart';

class CartProvider with ChangeNotifier {
  final Map<Product, int> _cartItems = {}; // Store full Product object with quantity

  Map<Product, int> get cartItems => _cartItems;

  void addToCart(Product product) {
    if (_cartItems.containsKey(product)) {
      _cartItems[product] = _cartItems[product]! + 1;
    } else {
      _cartItems[product] = 1;
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    if (_cartItems.containsKey(product)) {
      if (_cartItems[product]! > 1) {
        _cartItems[product] = _cartItems[product]! - 1;
      } else {
        _cartItems.remove(product);
      }
      notifyListeners();
    }
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  int getQuantity(Product product) {
    return _cartItems[product] ?? 0;
  }

  bool isInCart(Product product) {
    return _cartItems.containsKey(product);
  }

  double getTotalPrice() {
    return _cartItems.entries.fold(0, (total, entry) {
      double price = double.tryParse(entry.key.price.replaceAll(RegExp(r'[^0-9.]'), '')) ?? 0;
      return total + (price * entry.value);
    });
  }
}
