import 'package:flutter/material.dart';
import 'package:fruitables/model/product_model.dart';

class WishlistProvider extends ChangeNotifier {
  final List<Product> _wishlistItems = [];

  List<Product> get wishlistItems => _wishlistItems;

  /// ✅ Toggle Wishlist
  void toggleWishlist(Product product) {
    if (_wishlistItems.any((item) => item.id == product.id)) {
      _wishlistItems.removeWhere((item) => item.id == product.id);
    } else {
      _wishlistItems.add(product);
    }
    notifyListeners();
  }

  /// ✅ Check if product is in wishlist
  bool isInWishlist(String productId) {
    return _wishlistItems.any((product) => product.id == productId);
  }
}
