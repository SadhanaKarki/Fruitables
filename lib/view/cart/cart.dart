import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/cart/cart_provider.dart';
import '../../model/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        actions: [
          IconButton(
            onPressed: cartProvider.clearCart,
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: cartProvider.cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProvider.cartItems.length,
                    itemBuilder: (context, index) {
                      Product product = cartProvider.cartItems.keys.elementAt(index);
                      int quantity = cartProvider.getQuantity(product);

                      return ListTile(
                        leading: Image.asset(product.imagePath, width: 50, height: 50),
                        title: Text(product.name),
                        subtitle: Text(" ${product.price} x $quantity"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () => cartProvider.removeFromCart(product),
                              icon: const Icon(Icons.remove, color: Colors.red),
                            ),
                            Text('$quantity', style: const TextStyle(fontWeight: FontWeight.bold)),
                            IconButton(
                              onPressed: () => cartProvider.addToCart(product),
                              icon: const Icon(Icons.add, color: Colors.green),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Total: Rs. ${cartProvider.getTotalPrice().toStringAsFixed(2)}",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Checkout feature coming soon!")),
                          );
                        },
                        child: const Text("Checkout",style: TextStyle(color: Colors.blue),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
