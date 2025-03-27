
import 'package:flutter/material.dart';
import 'package:fruitables/model/product_list.dart';
import 'package:fruitables/model/product_model.dart';
import 'package:fruitables/view_model/cart/cart_provider.dart';
import 'package:fruitables/view_model/wishlist/wishlist_provider.dart';
import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class FruitsTabbar extends StatelessWidget {
  const FruitsTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> fruitProducts =
        productList.where((product) => product.category == "fruit").toList();
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 10, 
        mainAxisSpacing: 15, 
        childAspectRatio: 1.9 / 2.4, 
      ),
      itemCount: fruitProducts.length, 
      itemBuilder: (context, index) {
        return CardSample(product: fruitProducts[index]);
      },
    );
  }
}

class CardSample extends StatefulWidget {
  final Product product;

  const CardSample({super.key, required this.product});

  @override
  State<CardSample> createState() => _CardSampleState();
}

class _CardSampleState extends State<CardSample> {
 

  @override
  Widget build(BuildContext context) {
    var wishlistProvider = Provider.of<WishlistProvider>(context);
     var cartProvider = Provider.of<CartProvider>(context);
    //bool isInCart = cartProvider.isInCart(widget.product);
     int quantity = cartProvider.getQuantity(widget.product);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: 200,
        width: 200,

        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                widget.product.imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 145,
              ),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  wishlistProvider.toggleWishlist(widget.product);
                },
                icon: Icon(
                 wishlistProvider.isInWishlist(widget.product.id)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  size: 25,
                  color: Colors.red,
                ),
              ),
            ),

            Positioned(
              left: 10,
              bottom: 40,
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Color.fromARGB(255, 81, 79, 79),
                ),
              ),
            ),

            Positioned(
              left: 10,
              bottom: 7,
              child: Text(
                widget.product.price,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child:  quantity > 0
                ? Row(
                    children: [
                      IconButton(
                        onPressed: () => cartProvider.removeFromCart(widget.product),
                        icon: Icon(Icons.remove, color: Colors.red),
                      ),
                      Text('$quantity', style: TextStyle(fontWeight: FontWeight.bold)),
                      IconButton(
                        onPressed: () => cartProvider.addToCart(widget.product),
                        icon: Icon(Icons.add, color: Colors.green),
                      ),
                    ],
                  )
                : IconButton(
                    onPressed: () => cartProvider.addToCart(widget.product),
                    icon: Icon(Icons.shopping_cart_outlined, size: 25, color: Colors.grey),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

