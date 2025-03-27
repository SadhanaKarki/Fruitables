import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fruitables/view_model/wishlist/wishlist_provider.dart';
import 'package:fruitables/model/product_model.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var wishlistProvider = Provider.of<WishlistProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("My Wishlist")),
      body: wishlistProvider.wishlistItems.isEmpty
          ? const Center(child: Text("No items in wishlist"))
          : ListView.builder(
              itemCount: wishlistProvider.wishlistItems.length,
              itemBuilder: (context, index) {
                Product product = wishlistProvider.wishlistItems[index];
                return ListTile(
                  leading: Image.asset(product.imagePath, width: 50),
                  title: Text(product.name),
                  subtitle: Text(product.price),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle, color: Colors.red),
                    onPressed: () {
                      wishlistProvider.toggleWishlist(product);
                    },
                  ),
                );
              },
            ),
    );
  }
}
